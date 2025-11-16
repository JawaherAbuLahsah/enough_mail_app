import 'dart:convert';
import 'dart:math';

import 'package:workmanager/workmanager.dart';
import 'package:enough_mail/enough_mail.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../account/model.dart';
import '../account/provider.dart';
import '../account/storage.dart';
import '../app_lifecycle/provider.dart';
import '../logger.dart';
import '../mail/provider.dart';
import '../mail/service.dart';
import '../notification/service.dart';
import 'model.dart';

export 'provider.dart' show callbackDispatcher;

part 'provider.g.dart';

const String backgroundTaskName = 'com.maily.backgroundFetch';

/// Registers the background service to check for emails regularly
@Riverpod(keepAlive: true)
class Background extends _$Background {
  var _isActive = true;

  @override
  Future<void> build() {
    _isActive = true;
    ref.onDispose(() {
      _isActive = false;
    });
    if (!_isSupported) {
      return Future.value();
    }
    final isInactive = ref.watch(appIsInactivatedProvider);
    if (isInactive) {
      return _saveStateOnPause();
    }

    return Future.value();
  }

  /// Is the background provider supported on the current platform?
  static bool get _isSupported =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  /// Configures and registers the background service
  Future<void> init() async {
    if (!_isSupported) {
      logger.d('Background fetch not supported on this platform');
      return;
    }
    try {
      await Workmanager().initialize(
        callbackDispatcher,
        isInDebugMode: false,
      );

      // Schedule periodic task
      await Workmanager().registerPeriodicTask(
        'mailFetch',
        backgroundTaskName,
        frequency: const Duration(minutes: 15),
        constraints: Constraints(
          networkType: NetworkType.connected,
          requiresBatteryNotLow: false,
          requiresCharging: false,
          requiresDeviceIdle: false,
          requiresStorageNotLow: false,
        ),
        existingWorkPolicy: ExistingWorkPolicy.keep,
        backoffPolicy: BackoffPolicy.linear,
        backoffPolicyDelay: const Duration(minutes: 15),
      );

      logger.d('Background fetch registered successfully with WorkManager');
    } catch (e, s) {
      logger.e(
        'Failed to configure background fetch: $e',
        error: e,
        stackTrace: s,
      );
    }
  }

  Future<void> _saveStateOnPause() async {
    if (!_isActive) {
      return;
    }
    const storage = AccountStorage();
    final accounts = await storage.loadAccounts();
    if (accounts == null || accounts.isEmpty) {
      return;
    }
    final prefs = await SharedPreferences.getInstance();
    final nextUidsInfo = <String>[];
    for (final account in accounts) {
      if (account is RealAccount) {
        final mailClient = EmailService.instance.createMailClient(
          account.mailAccount,
          'background',
          null,
        );
        try {
          final inbox = await mailClient.selectInbox();
          nextUidsInfo.add('${account.email}:${inbox.uidNext}');
        } catch (e, s) {
          logger.e('Unable to get next UID for ${account.email}',
              error: e, stackTrace: s);
        }
      }
    }
    await prefs.setStringList(_keyInboxUids, nextUidsInfo);
  }
}

const String _keyInboxUids = 'nextUidsInfo';

/// The callback that will be called by WorkManager in the background
@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    try {
      if (taskName == backgroundTaskName) {
        await _checkForNewMail();
      }
      return true;
    } catch (e, s) {
      logger.e(
        'Error in background task: $e',
        error: e,
        stackTrace: s,
      );
      return false;
    }
  });
}

Future<void> _checkForNewMail() async {
  final preferences = await SharedPreferences.getInstance();
  final inboxUidsText = preferences.getStringList(_keyInboxUids);
  if (inboxUidsText == null || inboxUidsText.isEmpty) {
    logger.w('WARNING: no previous UID infos found, exiting.');
    return;
  }

  final info = <String, int>{};
  for (final text in inboxUidsText) {
    final parts = text.split(':');
    info[parts[0]] = int.parse(parts[1]);
  }

  const storage = AccountStorage();
  final accounts = await storage.loadAccounts();
  if (accounts == null || accounts.isEmpty) {
    return;
  }
  final notificationService = NotificationService.instance;
  await notificationService.init(checkForLaunchDetails: false);

  final futures = <Future>[];
  for (final account in accounts) {
    if (account is RealAccount) {
      final mailClient = EmailService.instance.createMailClient(
        account.mailAccount,
        'background',
        null,
      );
      final previousUidNext = info[account.email] ?? 0;
      futures.add(
        _loadNewMessage(
          mailClient,
          previousUidNext,
          notificationService,
        ),
      );
    }
  }
  await Future.wait(futures);

  final nextUidsInfo = <String>[];
  for (final account in accounts) {
    if (account is RealAccount) {
      final mailClient = EmailService.instance.createMailClient(
        account.mailAccount,
        'background',
        null,
      );
      try {
        final inbox = await mailClient.selectInbox();
        nextUidsInfo.add('${account.email}:${inbox.uidNext}');
      } catch (e, s) {
        logger.e('Unable to get next UID for ${account.email}',
            error: e, stackTrace: s);
      }
    }
  }
  await preferences.setStringList(_keyInboxUids, nextUidsInfo);
}

Future<void> _loadNewMessage(
  MailClient mailClient,
  int previousUidNext,
  NotificationService notificationService,
) async {
  try {
    await mailClient.connect();
    final inbox = await mailClient.selectInbox();
    final uidNext = inbox.uidNext;
    if (uidNext == previousUidNext || uidNext == null) {
      await mailClient.disconnect();
      return;
    }
    if (kDebugMode) {
      print(
        'new uidNext=$uidNext, previous=$previousUidNext '
        'for ${mailClient.account.name} uidValidity=${inbox.uidValidity}',
      );
    }
    final sequence = MessageSequence.fromRangeToLast(
      previousUidNext == 0
          ? max(previousUidNext, uidNext - 10)
          : previousUidNext,
      isUidSequence: true,
    );
    final mimeMessages = await mailClient.fetchMessageSequence(
      sequence,
      fetchPreference: FetchPreference.envelope,
    );
    for (final mimeMessage in mimeMessages) {
      if (!mimeMessage.isSeen) {
        await notificationService.sendLocalNotificationForMail(
          mimeMessage,
          mailClient.account.email,
        );
      }
    }
    await mailClient.disconnect();
  } catch (e, s) {
    logger.e(
      'Unable to process background operation '
      'for ${mailClient.account.name}: $e',
      error: e,
      stackTrace: s,
    );
  }
}
