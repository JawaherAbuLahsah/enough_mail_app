import '../util/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../enough_mail_app.dart';
import 'screens.dart';

/// Shows the inbox of the default account
class MailScreenForDefaultAccount extends ConsumerWidget {
  /// Creates a [MailScreenForDefaultAccount]
  const MailScreenForDefaultAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(allAccountsProvider);
    if (accounts.isEmpty) {
      return const WelcomeScreen();
    }
    final account = accounts.first;

    return MailScreen(
      account: account,
      showSplashWhileLoading: true,
    );
  }
}
