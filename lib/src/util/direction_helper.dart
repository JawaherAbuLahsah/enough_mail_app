import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../enough_mail_app.dart';

class DirectionHelper {
  TextDirection getDirection(WidgetRef ref) {
    final languageTag =
        ref.watch(settingsProvider.select((settings) => settings.languageTag));
    final locale = languageTag != null
        ? Locale(languageTag)
        : PlatformDispatcher.instance.locale;
    print("languageTag : $languageTag");
    TextDirection textDirection =
        (locale.languageCode == 'ar') ? TextDirection.rtl : TextDirection.ltr;
    return textDirection;
  }
}
