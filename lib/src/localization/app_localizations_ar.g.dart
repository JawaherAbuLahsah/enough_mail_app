// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get signature => 'مرسل باستخدام SAM';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionOk => 'موافق';

  @override
  String get actionDone => 'تم';

  @override
  String get actionNext => 'التالي';

  @override
  String get actionSkip => 'تخطي';

  @override
  String get actionUndo => 'تراجع';

  @override
  String get actionDelete => 'حذف';

  @override
  String get actionAccept => 'قبول';

  @override
  String get actionDecline => 'رفض';

  @override
  String get actionEdit => 'تعديل';

  @override
  String get actionAddressCopy => 'نسخ';

  @override
  String get actionAddressCompose => 'رسالة جديدة';

  @override
  String get actionAddressSearch => 'بحث';

  @override
  String get splashLoading1 => 'SAM قيد التشغيل...';

  @override
  String get splashLoading2 => 'جارٍ تجهيز محرك SAM...';

  @override
  String get splashLoading3 => 'تشغيل SAM خلال 10، 9، 8...';

  @override
  String get welcomePanel1Title => 'SAM';

  @override
  String get welcomePanel1Text =>
      'مرحبًا بك في SAM، مساعد البريد الإلكتروني السريع والصديق!';

  @override
  String get welcomePanel2Title => 'الحسابات';

  @override
  String get welcomePanel2Text =>
      'قم بإدارة عدد غير محدود من حسابات البريد الإلكتروني. اقرأ وابحث عن الرسائل في جميع حساباتك مرة واحدة.';

  @override
  String get welcomePanel3Title => 'السحب والضغط المطول';

  @override
  String get welcomePanel3Text =>
      'اسحب رسائلك لحذفها أو لوضع علامة عليها كمقروءة. اضغط مطولاً على رسالة لتحديد وإدارة عدة رسائل.';

  @override
  String get welcomePanel4Title => 'حافظ على صندوق الوارد نظيفًا';

  @override
  String get welcomePanel4Text =>
      'قم بإلغاء الاشتراك في النشرات الإخبارية بنقرة واحدة فقط.';

  @override
  String get welcomeActionSignIn => 'سجّل الدخول إلى حساب بريدك الإلكتروني';

  @override
  String get homeSearchHint => 'بحثك';

  @override
  String get homeActionsShowAsStack => 'عرض ككومة';

  @override
  String get homeActionsShowAsList => 'عرض كقائمة';

  @override
  String get homeEmptyFolderMessage =>
      'كل شيء جاهز!\n\nلا توجد رسائل في هذا المجلد.';

  @override
  String get homeEmptySearchMessage => 'لم يتم العثور على رسائل.';

  @override
  String get homeDeleteAllTitle => 'تأكيد';

  @override
  String get homeDeleteAllQuestion => 'هل تريد حقًا حذف جميع الرسائل؟';

  @override
  String get homeDeleteAllAction => 'حذف الكل';

  @override
  String get homeDeleteAllScrubOption => 'تنظيف الرسائل';

  @override
  String get homeDeleteAllSuccess => 'تم حذف جميع الرسائل.';

  @override
  String get homeMarkAllSeenAction => 'قراءة الكل';

  @override
  String get homeMarkAllUnseenAction => 'عدم قراءة الكل';

  @override
  String get homeFabTooltip => 'رسالة جديدة';

  @override
  String get homeLoadingMessageSourceTitle => 'جارٍ التحميل...';

  @override
  String homeLoading(String name) {
    return 'جارٍ تحميل $name...';
  }

  @override
  String get swipeActionToggleRead => 'وضع علامة كمقروء/غير مقروء';

  @override
  String get swipeActionDelete => 'حذف';

  @override
  String get swipeActionMarkJunk => 'وضع علامة كبريد غير هام';

  @override
  String get swipeActionArchive => 'أرشفة';

  @override
  String get swipeActionFlag => 'تبديل العلامة';

  @override
  String multipleMovedToJunk(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'تم وضع علامة على $numberString رسائل كبريد غير هام',
      one: 'تم وضع علامة على رسالة واحدة كبريد غير هام',
    );
    return '$_temp0';
  }

  @override
  String multipleMovedToInbox(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'تم نقل $numberString رسائل إلى البريد الوارد',
      one: 'تم نقل رسالة واحدة إلى البريد الوارد',
    );
    return '$_temp0';
  }

  @override
  String multipleMovedToArchive(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'تم أرشفة $numberString رسائل',
      one: 'تم أرشفة رسالة واحدة',
    );
    return '$_temp0';
  }

  @override
  String multipleMovedToTrash(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'تم حذف $numberString رسائل',
      one: 'تم حذف رسالة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get multipleSelectionNeededInfo => 'يرجى تحديد الرسائل أولاً.';

  @override
  String multipleSelectionActionFailed(String details) {
    return 'تعذر تنفيذ الإجراء\nالتفاصيل: $details';
  }

  @override
  String multipleMoveTitle(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'نقل $numberString رسائل',
      one: 'نقل رسالة',
    );
    return '$_temp0';
  }

  @override
  String get messageActionMultipleMarkSeen => 'وضع علامة كمقروء';

  @override
  String get messageActionMultipleMarkUnseen => 'وضع علامة كغير مقروء';

  @override
  String get messageActionMultipleMarkFlagged => 'تمييز الرسائل';

  @override
  String get messageActionMultipleMarkUnflagged => 'إلغاء تمييز الرسائل';

  @override
  String get messageActionViewInSafeMode => 'عرض بدون محتوى خارجي';

  @override
  String get emailSenderUnknown => '<لا يوجد مرسل>';

  @override
  String get dateRangeFuture => 'المستقبل';

  @override
  String get dateRangeTomorrow => 'غدًا';

  @override
  String get dateRangeToday => 'اليوم';

  @override
  String get dateRangeYesterday => 'أمس';

  @override
  String get dateRangeCurrentWeek => 'هذا الأسبوع';

  @override
  String get dateRangeLastWeek => 'الأسبوع الماضي';

  @override
  String get dateRangeCurrentMonth => 'هذا الشهر';

  @override
  String get dateRangeLastMonth => 'الشهر الماضي';

  @override
  String get dateRangeCurrentYear => 'هذا العام';

  @override
  String get dateRangeLongAgo => 'منذ زمن طويل';

  @override
  String get dateUndefined => 'غير محدد';

  @override
  String get dateDayToday => 'اليوم';

  @override
  String get dateDayYesterday => 'أمس';

  @override
  String dateDayLastWeekday(String day) {
    return 'الأسبوع الماضي $day';
  }

  @override
  String get drawerEntryAbout => 'حول SAM';

  @override
  String get drawerEntrySettings => 'الإعدادات';

  @override
  String drawerAccountsSectionTitle(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString حسابات',
      one: 'حساب واحد',
    );
    return '$_temp0';
  }

  @override
  String get drawerEntryAddAccount => 'إضافة حساب';

  @override
  String get unifiedAccountName => 'الحساب الموحد';

  @override
  String get unifiedFolderInbox => 'الوارد الموحد';

  @override
  String get unifiedFolderSent => 'الصادر الموحد';

  @override
  String get unifiedFolderDrafts => 'المسودات الموحدة';

  @override
  String get unifiedFolderTrash => 'المهملات الموحدة';

  @override
  String get unifiedFolderArchive => 'الأرشيف الموحد';

  @override
  String get unifiedFolderJunk => 'الرسائل غير المرغوب فيها الموحدة';

  @override
  String get folderInbox => 'الوارد';

  @override
  String get folderSent => 'الصادر';

  @override
  String get folderDrafts => 'المسودات';

  @override
  String get folderTrash => 'المهملات';

  @override
  String get folderArchive => 'الأرشيف';

  @override
  String get folderJunk => 'غير المرغوب فيه';

  @override
  String get folderUnknown => 'غير معروف';

  @override
  String get viewContentsAction => 'عرض المحتوى';

  @override
  String get viewSourceAction => 'عرض المصدر';

  @override
  String get detailsErrorDownloadInfo => 'تعذر تنزيل الرسالة.';

  @override
  String get detailsErrorDownloadRetry => 'إعادة المحاولة';

  @override
  String get detailsHeaderFrom => 'من';

  @override
  String get detailsHeaderTo => 'إلى';

  @override
  String get detailsHeaderCc => 'نسخة إلى';

  @override
  String get detailsHeaderBcc => 'نسخة مخفية';

  @override
  String get detailsHeaderDate => 'التاريخ';

  @override
  String get subjectUndefined => '<بدون موضوع>';

  @override
  String get detailsActionShowImages => 'عرض الصور';

  @override
  String get detailsNewsletterActionUnsubscribe => 'إلغاء الاشتراك';

  @override
  String get detailsNewsletterActionResubscribe => 'إعادة الاشتراك';

  @override
  String get detailsNewsletterStatusUnsubscribed => 'تم إلغاء الاشتراك';

  @override
  String get detailsNewsletterUnsubscribeDialogTitle => 'إلغاء الاشتراك';

  @override
  String detailsNewsletterUnsubscribeDialogQuestion(String listName) {
    return 'هل تريد إلغاء الاشتراك في القائمة البريدية $listName؟';
  }

  @override
  String get detailsNewsletterUnsubscribeDialogAction => 'إلغاء الاشتراك';

  @override
  String get detailsNewsletterUnsubscribeSuccessTitle => 'تم إلغاء الاشتراك';

  @override
  String detailsNewsletterUnsubscribeSuccessMessage(String listName) {
    return 'لقد تم إلغاء اشتراكك الآن في القائمة البريدية $listName.';
  }

  @override
  String get detailsNewsletterUnsubscribeFailureTitle =>
      'لم يتم إلغاء الاشتراك';

  @override
  String detailsNewsletterUnsubscribeFailureMessage(String listName) {
    return 'عذرًا، لم أتمكن من إلغاء اشتراكك في $listName تلقائيًا.';
  }

  @override
  String get detailsNewsletterResubscribeDialogTitle => 'إعادة الاشتراك';

  @override
  String detailsNewsletterResubscribeDialogQuestion(String listName) {
    return 'هل تريد الاشتراك في هذه القائمة البريدية $listName مرة أخرى؟';
  }

  @override
  String get detailsNewsletterResubscribeDialogAction => 'الاشتراك';

  @override
  String get detailsNewsletterResubscribeSuccessTitle => 'تم الاشتراك';

  @override
  String detailsNewsletterResubscribeSuccessMessage(String listName) {
    return 'لقد تم الاشتراك مرة أخرى في القائمة البريدية $listName.';
  }

  @override
  String get detailsNewsletterResubscribeFailureTitle => 'لم يتم الاشتراك';

  @override
  String detailsNewsletterResubscribeFailureMessage(String listName) {
    return 'عذرًا، ولكن طلب الاشتراك قد فشل في القائمة البريدية $listName.';
  }

  @override
  String get detailsSendReadReceiptAction => 'إرسال إشعار القراءة';

  @override
  String get detailsReadReceiptSentStatus => 'تم إرسال إشعار القراءة ✔';

  @override
  String get detailsReadReceiptSubject => 'إشعار القراءة';

  @override
  String get attachmentActionOpen => 'فتح';

  @override
  String attachmentDecodeError(String details) {
    return 'هذا المرفق يحتوي على تنسيق أو ترميز غير مدعوم.\nالتفاصيل: \$$details';
  }

  @override
  String attachmentDownloadError(String details) {
    return 'تعذر تحميل هذا المرفق.\nالتفاصيل: \$$details';
  }

  @override
  String get messageActionReply => 'رد';

  @override
  String get messageActionReplyAll => 'الرد على الجميع';

  @override
  String get messageActionForward => 'إعادة التوجيه';

  @override
  String get messageActionForwardAsAttachment => 'إعادة التوجيه كمرفق';

  @override
  String messageActionForwardAttachments(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: 'إعادة توجيه $numberString مرفقات',
      one: 'إعادة توجيه مرفق',
    );
    return '$_temp0';
  }

  @override
  String get messagesActionForwardAttachments => 'إعادة توجيه المرفقات';

  @override
  String get messageActionDelete => 'حذف';

  @override
  String get messageActionMoveToInbox => 'نقل إلى البريد الوارد';

  @override
  String get messageActionMove => 'نقل';

  @override
  String get messageStatusSeen => 'تمت قراءتها';

  @override
  String get messageStatusUnseen => 'غير مقروءة';

  @override
  String get messageStatusFlagged => 'تم وضع علامة عليها';

  @override
  String get messageStatusUnflagged => 'لم يتم وضع علامة عليها';

  @override
  String get messageActionMarkAsJunk => 'وضع في البريد المزعج';

  @override
  String get messageActionMarkAsNotJunk => 'إزالة من البريد المزعج';

  @override
  String get messageActionArchive => 'أرشفة';

  @override
  String get messageActionUnarchive => 'نقل إلى البريد الوارد';

  @override
  String get messageActionRedirect => 'إعادة توجيه';

  @override
  String get messageActionAddNotification => 'إضافة إشعار';

  @override
  String get resultDeleted => 'تم الحذف';

  @override
  String get resultMovedToJunk => 'تم وضعها في البريد المزعج';

  @override
  String get resultMovedToInbox => 'تم النقل إلى البريد الوارد';

  @override
  String get resultArchived => 'تم الأرشفة';

  @override
  String get resultRedirectedSuccess => 'تم إعادة توجيه الرسالة 👍';

  @override
  String resultRedirectedFailure(String details) {
    return 'تعذر إعادة توجيه الرسالة.\n\nرد الخادم بالتفاصيل التالية: \"$details\"';
  }

  @override
  String get redirectTitle => 'إعادة توجيه';

  @override
  String get redirectInfo =>
      'إعادة توجيه هذه الرسالة إلى المستلم(ين) التاليين. لا يؤدي إعادة التوجيه إلى تغيير الرسالة.';

  @override
  String get redirectEmailInputRequired =>
      'يجب عليك إضافة عنوان بريد إلكتروني صالح واحد على الأقل.';

  @override
  String searchQueryDescription(String folder) {
    return 'البحث في $folder...';
  }

  @override
  String searchQueryTitle(String query) {
    return 'بحث عن \"$query\"';
  }

  @override
  String get legaleseUsage => 'باستخدام SAM أنت توافق على [PP] و [TC].';

  @override
  String get legalesePrivacyPolicy => 'سياسة الخصوصية';

  @override
  String get legaleseTermsAndConditions => 'الشروط والأحكام';

  @override
  String get aboutApplicationLegalese =>
      'SAM هو برنامج مجاني منشور بموجب رخصة جنو العامة.';

  @override
  String get feedbackActionSuggestFeature => 'اقتراح ميزة';

  @override
  String get feedbackActionReportProblem => 'الإبلاغ عن مشكلة';

  @override
  String get feedbackActionHelpDeveloping => 'مساعدة في تطوير SAM';

  @override
  String get feedbackTitle => 'التعليقات';

  @override
  String get feedbackIntro => 'شكرًا لاختبارك SAM!';

  @override
  String get feedbackProvideInfoRequest =>
      'يرجى تقديم هذه المعلومات عند الإبلاغ عن مشكلة:';

  @override
  String get feedbackResultInfoCopied => 'تم النسخ إلى الحافظة';

  @override
  String get accountsTitle => 'الحسابات';

  @override
  String get accountsActionReorder => 'إعادة ترتيب الحسابات';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsSecurityBlockExternalImages => 'حظر الصور الخارجية';

  @override
  String get settingsSecurityBlockExternalImagesDescriptionTitle =>
      'الصور الخارجية';

  @override
  String get settingsSecurityBlockExternalImagesDescriptionText =>
      'قد تحتوي رسائل البريد الإلكتروني على صور إما مدمجة أو مستضافة على خوادم خارجية. الصور الخارجية يمكن أن تكشف معلومات للمرسل، مثل معرفة إذا كنت قد فتحت الرسالة. يتيح لك هذا الخيار حظر هذه الصور الخارجية، مما يقلل من خطر الكشف عن معلومات حساسة. يمكنك دائمًا اختيار تحميل هذه الصور بشكل فردي عند قراءة الرسالة.';

  @override
  String get settingsSecurityMessageRenderingHtml =>
      'عرض محتويات الرسالة بالكامل';

  @override
  String get settingsSecurityMessageRenderingPlainText =>
      'عرض النص فقط للرسائل';

  @override
  String get settingsSecurityLaunchModeLabel => 'كيف يجب على SAM فتح الروابط؟';

  @override
  String get settingsSecurityLaunchModeExternal => 'فتح الروابط خارجيًا';

  @override
  String get settingsSecurityLaunchModeInApp => 'فتح الروابط في SAM';

  @override
  String get settingsActionAccounts => 'إدارة الحسابات';

  @override
  String get settingsActionDesign => 'المظهر';

  @override
  String get settingsActionFeedback => 'تقديم ملاحظات';

  @override
  String get settingsActionWelcome => 'عرض الترحيب';

  @override
  String get settingsReadReceipts => 'إيصالات القراءة';

  @override
  String get readReceiptsSettingsIntroduction =>
      'هل ترغب في عرض طلبات إيصال القراءة؟';

  @override
  String get readReceiptOptionAlways => 'دائمًا';

  @override
  String get readReceiptOptionNever => 'أبدًا';

  @override
  String get settingsFolders => 'المجلدات';

  @override
  String get folderNamesIntroduction => 'ما هي الأسماء التي تفضلها لمجلداتك؟';

  @override
  String get folderNamesSettingLocalized => 'الأسماء التي يقدمها SAM';

  @override
  String get folderNamesSettingServer => 'الأسماء التي يقدمها الخادم';

  @override
  String get folderNamesSettingCustom => 'أسمائي المخصصة';

  @override
  String get folderNamesEditAction => 'تحرير الأسماء المخصصة';

  @override
  String get folderNamesCustomTitle => 'الأسماء المخصصة';

  @override
  String get folderAddAction => 'إنشاء مجلد';

  @override
  String get folderAddTitle => 'إنشاء مجلد';

  @override
  String get folderAddNameLabel => 'الاسم';

  @override
  String get folderAddNameHint => 'اسم المجلد الجديد';

  @override
  String get folderAccountLabel => 'الحساب';

  @override
  String get folderMailboxLabel => 'المجلد';

  @override
  String get folderAddResultSuccess => 'تم إنشاء المجلد 😊';

  @override
  String folderAddResultFailure(String details) {
    return 'لم يتم إنشاء المجلد.\n\nاستجاب الخادم بالتفاصيل التالية: $details';
  }

  @override
  String get folderDeleteAction => 'حذف';

  @override
  String get folderDeleteConfirmTitle => 'تأكيد';

  @override
  String folderDeleteConfirmText(String name) {
    return 'هل تريد حقًا حذف المجلد $name؟';
  }

  @override
  String get folderDeleteResultSuccess => 'تم حذف المجلد.';

  @override
  String folderDeleteResultFailure(String details) {
    return 'لم يتم حذف المجلد.\n\nاستجاب الخادم بالتفاصيل التالية: $details';
  }

  @override
  String get settingsDevelopment => 'إعدادات التطوير';

  @override
  String get developerModeTitle => 'وضع التطوير';

  @override
  String get developerModeIntroduction =>
      'إذا قمت بتمكين وضع التطوير، ستتمكن من عرض الشيفرة المصدرية للرسائل وتحويل المرفقات النصية إلى رسائل.';

  @override
  String get developerModeEnable => 'تمكين وضع التطوير';

  @override
  String get developerShowAsEmail => 'تحويل النص إلى بريد إلكتروني';

  @override
  String get developerShowAsEmailFailed =>
      'لا يمكن تحويل هذا النص إلى رسالة MIME.';

  @override
  String get designTitle => 'إعدادات التصميم';

  @override
  String get designSectionThemeTitle => 'السمة';

  @override
  String get designThemeOptionLight => 'فاتح';

  @override
  String get designThemeOptionDark => 'داكن';

  @override
  String get designThemeOptionSystem => 'النظام';

  @override
  String get designThemeOptionCustom => 'مخصص';

  @override
  String get designSectionCustomTitle => 'تمكين السمة الداكنة';

  @override
  String designThemeCustomStart(String time) {
    return 'من $time';
  }

  @override
  String designThemeCustomEnd(String time) {
    return 'حتى $time';
  }

  @override
  String get designSectionColorTitle => 'نظام الألوان';

  @override
  String get securitySettingsTitle => 'الأمان';

  @override
  String get securitySettingsIntro =>
      'قم بتكييف إعدادات الأمان وفقًا لاحتياجاتك الشخصية.';

  @override
  String get securityUnlockWithFaceId => 'افتح SAM باستخدام Face ID.';

  @override
  String get securityUnlockWithTouchId => 'افتح SAM باستخدام Touch ID.';

  @override
  String get securityUnlockReason => 'افتح SAM.';

  @override
  String get securityUnlockDisableReason => 'افتح SAM لإيقاف القفل.';

  @override
  String get securityUnlockNotAvailable =>
      'جهازك لا يدعم المصادقة البيومترية، ربما تحتاج إلى إعداد خيارات الفتح أولاً.';

  @override
  String get securityUnlockLabel => 'قفل SAM';

  @override
  String get securityUnlockDescriptionTitle => 'قفل SAM';

  @override
  String get securityUnlockDescriptionText =>
      'يمكنك اختيار قفل الوصول إلى SAM، حتى لا يتمكن الآخرون من قراءة بريدك الإلكتروني حتى لو كان لديهم وصول إلى جهازك.';

  @override
  String get securityLockImmediately => 'قفل فورًا';

  @override
  String get securityLockAfter5Minutes => 'قفل بعد 5 دقائق';

  @override
  String get securityLockAfter30Minutes => 'قفل بعد 30 دقيقة';

  @override
  String get lockScreenTitle => 'SAM قفل';

  @override
  String get lockScreenIntro => 'تم قفل SAM، يرجى المصادقة للمتابعة.';

  @override
  String get lockScreenUnlockAction => 'فتح';

  @override
  String get addAccountTitle => 'إضافة حساب';

  @override
  String get addAccountEmailLabel => 'البريد الإلكتروني';

  @override
  String get addAccountEmailHint => 'يرجى إدخال عنوان بريدك الإلكتروني';

  @override
  String addAccountResolvingSettingsLabel(String email) {
    return 'جاري حل إعدادات $email...';
  }

  @override
  String addAccountResolvedSettingsWrongAction(String provider) {
    return 'ليس على $provider؟';
  }

  @override
  String addAccountResolvingSettingsFailedInfo(String email) {
    return 'تعذر حل $email. يرجى العودة لتغييره أو إعداد الحساب يدويًا.';
  }

  @override
  String get addAccountEditManuallyAction => 'تحرير يدويًا';

  @override
  String get addAccountPasswordLabel => 'كلمة المرور';

  @override
  String get addAccountPasswordHint => 'يرجى إدخال كلمة المرور الخاصة بك';

  @override
  String get addAccountApplicationPasswordRequiredInfo =>
      'يتطلب هذا المزود منك إعداد كلمة مرور خاصة بالتطبيق.';

  @override
  String get addAccountApplicationPasswordRequiredButton =>
      'إنشاء كلمة مرور خاصة بالتطبيق';

  @override
  String get addAccountApplicationPasswordRequiredAcknowledged =>
      'لدي كلمة مرور خاصة بالتطبيق بالفعل';

  @override
  String get addAccountVerificationStep => 'التحقق';

  @override
  String get addAccountSetupAccountStep => 'إعداد الحساب';

  @override
  String addAccountVerifyingSettingsLabel(String email) {
    return 'جاري التحقق من إعدادات $email...';
  }

  @override
  String addAccountVerifyingSuccessInfo(String email) {
    return 'تم تسجيل الدخول بنجاح إلى $email.';
  }

  @override
  String addAccountVerifyingFailedInfo(String email) {
    return 'عذرًا، ولكن هناك مشكلة. يرجى التحقق من بريدك الإلكتروني $email وكلمة المرور.';
  }

  @override
  String addAccountOauthOptionsText(String provider) {
    return 'تسجيل الدخول باستخدام $provider أو إنشاء كلمة مرور خاصة بالتطبيق.';
  }

  @override
  String addAccountOauthSignIn(String provider) {
    return 'تسجيل الدخول باستخدام $provider';
  }

  @override
  String get addAccountOauthSignInGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get addAccountOauthSignInWithAppPassword =>
      'بدلاً من ذلك، أنشئ كلمة مرور خاصة بالتطبيق لتسجيل الدخول.';

  @override
  String get accountAddImapAccessSetupMightBeRequired =>
      'قد يتطلب موفر الخدمة لديك إعداد الوصول لتطبيقات البريد الإلكتروني يدويًا.';

  @override
  String get addAccountSetupImapAccessButtonLabel =>
      'إعداد الوصول للبريد الإلكتروني';

  @override
  String get addAccountNameOfUserLabel => 'اسمك';

  @override
  String get addAccountNameOfUserHint => 'الاسم الذي يراه المستلمون';

  @override
  String get addAccountNameOfAccountLabel => 'اسم الحساب';

  @override
  String get addAccountNameOfAccountHint => 'يرجى إدخال اسم حسابك';

  @override
  String editAccountTitle(String name) {
    return 'تحرير $name';
  }

  @override
  String editAccountFailureToConnectInfo(String name) {
    return 'تعذر على SAM الاتصال بـ $name.';
  }

  @override
  String get editAccountFailureToConnectRetryAction => 'إعادة المحاولة';

  @override
  String get editAccountFailureToConnectChangePasswordAction =>
      'تغيير كلمة المرور';

  @override
  String get editAccountFailureToConnectFixedTitle => 'متصل';

  @override
  String get editAccountFailureToConnectFixedInfo =>
      'تم الاتصال بالحساب مرة أخرى.';

  @override
  String get editAccountIncludeInUnifiedLabel => 'تضمين في الحساب الموحد';

  @override
  String editAccountAliasLabel(String email) {
    return 'عناوين البريد الإلكتروني البديلة لـ $email:';
  }

  @override
  String get editAccountNoAliasesInfo =>
      'ليس لديك أي عناوين بديلة معروفة لهذا الحساب بعد.';

  @override
  String editAccountAliasRemoved(String email) {
    return 'تم إزالة $email alias';
  }

  @override
  String get editAccountAddAliasAction => 'إضافة اسم مستعار';

  @override
  String get editAccountPlusAliasesSupported => 'يدعم + aliases';

  @override
  String get editAccountCheckPlusAliasAction => 'اختبار دعم + aliases';

  @override
  String get editAccountBccMyself => 'BCC لنفسي';

  @override
  String get editAccountBccMyselfDescriptionTitle => 'BCC لنفسي';

  @override
  String get editAccountBccMyselfDescriptionText =>
      'يمكنك إرسال الرسائل تلقائيًا إلى نفسك عن كل رسالة ترسلها من هذا الحساب باستخدام ميزة \"BCC لنفسي\". عادةً ما لا يكون هذا مطلوبًا أو مرغوبًا لأن جميع الرسائل المرسلة يتم تخزينها في مجلد \"البريد الصادر\" على أي حال.';

  @override
  String get editAccountServerSettingsAction => 'تحرير إعدادات الخادم';

  @override
  String get editAccountDeleteAccountAction => 'حذف الحساب';

  @override
  String get editAccountDeleteAccountConfirmationTitle => 'تأكيد';

  @override
  String editAccountDeleteAccountConfirmationQuery(String name) {
    return 'هل تريد حذف الحساب $name؟';
  }

  @override
  String editAccountTestPlusAliasTitle(String name) {
    return '+ Aliases لـ $name';
  }

  @override
  String get editAccountTestPlusAliasStepIntroductionTitle => 'مقدمة';

  @override
  String editAccountTestPlusAliasStepIntroductionText(
      String accountName, String example) {
    return 'قد يدعم حسابك $accountName ما يسمى بـ + aliases مثل $example.\nيساعدك + alias على حماية هويتك ويحميك من البريد المزعج.\nلاختبار ذلك، سيتم إرسال رسالة اختبار إلى هذا العنوان الذي تم إنشاؤه. إذا وصلت، فهذا يعني أن مزود الخدمة يدعم + aliases ويمكنك إنشاؤها بسهولة عند كتابة رسالة جديدة.';
  }

  @override
  String get editAccountTestPlusAliasStepTestingTitle => 'الاختبار';

  @override
  String get editAccountTestPlusAliasStepResultTitle => 'النتيجة';

  @override
  String editAccountTestPlusAliasStepResultSuccess(String name) {
    return 'حسابك $name يدعم + aliases.';
  }

  @override
  String editAccountTestPlusAliasStepResultNoSuccess(String name) {
    return 'حسابك $name لا يدعم + aliases.';
  }

  @override
  String get editAccountAddAliasTitle => 'إضافة اسم مستعار';

  @override
  String get editAccountEditAliasTitle => 'تحرير الاسم المستعار';

  @override
  String get editAccountAliasAddAction => 'إضافة';

  @override
  String get editAccountAliasUpdateAction => 'تحديث';

  @override
  String get editAccountEditAliasNameLabel => 'اسم الاسم المستعار';

  @override
  String get editAccountEditAliasEmailLabel =>
      'البريد الإلكتروني للاسم المستعار';

  @override
  String get editAccountEditAliasEmailHint => 'عنوان بريدك الإلكتروني المستعار';

  @override
  String editAccountEditAliasDuplicateError(String email) {
    return 'هناك بالفعل اسم مستعار مع $email.';
  }

  @override
  String get editAccountEnableLogging => 'تمكين السجل';

  @override
  String get editAccountLoggingEnabled => 'تم تمكين السجل، يرجى إعادة التشغيل';

  @override
  String get editAccountLoggingDisabled => 'تم تعطيل السجل، يرجى إعادة التشغيل';

  @override
  String get accountDetailsFallbackTitle => 'إعدادات الخادم';

  @override
  String get errorTitle => 'خطأ';

  @override
  String get accountProviderStepTitle => 'مزود خدمة البريد الإلكتروني';

  @override
  String get accountProviderCustom => 'خدمة بريد إلكتروني أخرى';

  @override
  String accountDetailsErrorHostProblem(
      String incomingHost, String outgoingHost) {
    return 'لا يمكن لـ SAM الوصول إلى خادم البريد المحدد. يرجى التحقق من إعداد الخادم الوارد \"$incomingHost\" وإعداد الخادم الصادر \"$outgoingHost\".';
  }

  @override
  String accountDetailsErrorLoginProblem(String userName, String password) {
    return 'تعذر تسجيل الدخول. يرجى التحقق من اسم المستخدم \"$userName\" وكلمة المرور \"$password\".';
  }

  @override
  String get accountDetailsUserNameLabel => 'اسم المستخدم';

  @override
  String get accountDetailsUserNameHint =>
      'اسم المستخدم الخاص بك، إذا كان مختلفًا عن البريد الإلكتروني';

  @override
  String get accountDetailsPasswordLabel => 'كلمة مرور تسجيل الدخول';

  @override
  String get accountDetailsPasswordHint => 'كلمة المرور الخاصة بك';

  @override
  String get accountDetailsBaseSectionTitle => 'الإعدادات الأساسية';

  @override
  String get accountDetailsIncomingLabel => 'الخادم الوارد';

  @override
  String get accountDetailsIncomingHint => 'نطاق مثل imap.domain.com';

  @override
  String get accountDetailsOutgoingLabel => 'الخادم الصادر';

  @override
  String get accountDetailsOutgoingHint => 'نطاق مثل smtp.domain.com';

  @override
  String get accountDetailsAdvancedIncomingSectionTitle =>
      'إعدادات متقدمة للخادم الوارد';

  @override
  String get accountDetailsIncomingServerTypeLabel => 'نوع الوارد:';

  @override
  String get accountDetailsOptionAutomatic => 'تلقائي';

  @override
  String get accountDetailsIncomingSecurityLabel => 'أمان الوارد:';

  @override
  String get accountDetailsSecurityOptionNone => 'عادي (دون تشفير)';

  @override
  String get accountDetailsIncomingPortLabel => 'منفذ الوارد';

  @override
  String get accountDetailsPortHint => 'اتركه فارغًا لتحديده تلقائيًا';

  @override
  String get accountDetailsIncomingUserNameLabel => 'اسم المستخدم الوارد';

  @override
  String get accountDetailsAlternativeUserNameHint =>
      'اسم المستخدم الخاص بك، إذا كان مختلفًا عن أعلاه';

  @override
  String get accountDetailsIncomingPasswordLabel => 'كلمة المرور الواردة';

  @override
  String get accountDetailsAlternativePasswordHint =>
      'كلمة المرور الخاصة بك، إذا كانت مختلفة عن أعلاه';

  @override
  String get accountDetailsAdvancedOutgoingSectionTitle =>
      'الإعدادات المتقدمة للصادر';

  @override
  String get accountDetailsOutgoingServerTypeLabel => 'نوع الصادر:';

  @override
  String get accountDetailsOutgoingSecurityLabel => 'أمان الصادر:';

  @override
  String get accountDetailsOutgoingPortLabel => 'منفذ الصادر';

  @override
  String get accountDetailsOutgoingUserNameLabel => 'اسم المستخدم الصادر';

  @override
  String get accountDetailsOutgoingPasswordLabel => 'كلمة المرور الصادرة';

  @override
  String get composeTitleNew => 'رسالة جديدة';

  @override
  String get composeTitleForward => 'إعادة توجيه';

  @override
  String get composeTitleReply => 'رد';

  @override
  String get composeEmptyMessage => 'رسالة فارغة';

  @override
  String get composeWarningNoSubject =>
      'لم تحدد موضوعًا. هل تريد إرسال الرسالة بدون موضوع؟';

  @override
  String get composeActionSentWithoutSubject => 'إرسال';

  @override
  String get composeMailSendSuccess => 'تم إرسال البريد 😊';

  @override
  String composeSendErrorInfo(String details) {
    return 'آسف، لم يتمكن بريدك من الإرسال. تلقينا الخطأ التالي:\n$details.';
  }

  @override
  String get composeRequestReadReceiptAction => 'طلب إيصال القراءة';

  @override
  String get composeSaveDraftAction => 'حفظ كمسودة';

  @override
  String get composeMessageSavedAsDraft => 'تم حفظ المسودة';

  @override
  String composeMessageSavedAsDraftErrorInfo(String details) {
    return 'لم يتم حفظ مسودتك مع الخطأ التالي:\n$details';
  }

  @override
  String get composeConvertToPlainTextEditorAction => 'تحويل إلى نص عادي';

  @override
  String get composeConvertToHtmlEditorAction => 'تحويل إلى رسالة غنية (HTML)';

  @override
  String get composeContinueEditingAction => 'استمرار التحرير';

  @override
  String get composeCreatePlusAliasAction => 'إنشاء + alias جديد...';

  @override
  String get composeSenderHint => 'المرسل';

  @override
  String get composeRecipientHint => 'البريد الإلكتروني للمستلم';

  @override
  String get composeSubjectLabel => 'الموضوع';

  @override
  String get composeSubjectHint => 'موضوع الرسالة';

  @override
  String get composeAddAttachmentAction => 'إضافة';

  @override
  String composeRemoveAttachmentAction(String name) {
    return 'إزالة $name';
  }

  @override
  String get composeLeftByMistake => 'هل تركت عن طريق الخطأ؟';

  @override
  String get attachTypeFile => 'ملف';

  @override
  String get attachTypePhoto => 'صورة';

  @override
  String get attachTypeVideo => 'فيديو';

  @override
  String get attachTypeAudio => 'صوت';

  @override
  String get attachTypeLocation => 'موقع';

  @override
  String get attachTypeGif => 'صورة متحركة Gif';

  @override
  String get attachTypeGifSearch => 'بحث في GIPHY';

  @override
  String get attachTypeSticker => 'ملصق';

  @override
  String get attachTypeStickerSearch => 'بحث في GIPHY';

  @override
  String get attachTypeAppointment => 'موعد';

  @override
  String get languageSettingTitle => 'اللغة';

  @override
  String get languageSettingLabel => 'اختر اللغة لـ SAM:';

  @override
  String get languageSettingSystemOption => 'لغة النظام';

  @override
  String get languageSettingConfirmationTitle =>
      'استخدام اللغة العربية لـ SAM؟';

  @override
  String get languageSettingConfirmationQuery =>
      'يرجى التأكيد لاستخدام اللغة العربية كاختيارك للغة.';

  @override
  String get languageSetInfo => 'SAM is now shown in Arabic.';

  @override
  String get languageSystemSetInfo =>
      'سيتم الآن استخدام  لغة النظام أو العربية إذا لم تكن لغة النظام مدعومة.';

  @override
  String get swipeSettingTitle => 'إيماءات السحب';

  @override
  String get swipeSettingLeftToRightLabel => 'السحب من اليسار لليمين';

  @override
  String get swipeSettingRightToLeftLabel => 'السحب من اليمين لليسار';

  @override
  String get swipeSettingChangeAction => 'تغيير';

  @override
  String get signatureSettingsTitle => 'التوقيع';

  @override
  String get signatureSettingsComposeActionsInfo =>
      'تمكين التوقيع للرسائل التالية:';

  @override
  String get signatureSettingsAccountInfo =>
      'يمكنك تحديد توقيعات خاصة بالحساب في إعدادات الحساب.';

  @override
  String signatureSettingsAddForAccount(String account) {
    return 'إضافة توقيع لـ $account';
  }

  @override
  String get defaultSenderSettingsTitle => 'المرسل الافتراضي';

  @override
  String get defaultSenderSettingsLabel => 'حدد المرسل للرسائل الجديدة.';

  @override
  String defaultSenderSettingsFirstAccount(String email) {
    return 'أول حساب ($email)';
  }

  @override
  String get defaultSenderSettingsAliasInfo =>
      'يمكنك إعداد عناوين البريد الإلكتروني المستعارة في [AS].';

  @override
  String get defaultSenderSettingsAliasAccountSettings => 'إعدادات الحساب';

  @override
  String get replySettingsTitle => 'تنسيق الرسائل';

  @override
  String get replySettingsIntro =>
      'ما هو التنسيق الذي ترغب في الرد أو إعادة توجيه البريد الإلكتروني به بشكل افتراضي؟';

  @override
  String get replySettingsFormatHtml => 'دائمًا بتنسيق غني (HTML)';

  @override
  String get replySettingsFormatSameAsOriginal =>
      'استخدام نفس تنسيق البريد الإلكتروني الأصلي';

  @override
  String get replySettingsFormatPlainText => 'دائمًا نص فقط';

  @override
  String get moveTitle => 'نقل الرسالة';

  @override
  String moveSuccess(String mailbox) {
    return 'تم نقل الرسالة إلى $mailbox.';
  }

  @override
  String get editorArtInputLabel => 'مدخلاتك';

  @override
  String get editorArtInputHint => 'أدخل النص هنا';

  @override
  String get editorArtWaitingForInputHint => 'في انتظار الإدخال...';

  @override
  String get fontSerifBold => 'سيريف عريض';

  @override
  String get fontSerifItalic => 'سيريف مائل';

  @override
  String get fontSerifBoldItalic => 'سيريف عريض مائل';

  @override
  String get fontSans => 'سانس';

  @override
  String get fontSansBold => 'سانس عريض';

  @override
  String get fontSansItalic => 'سانس مائل';

  @override
  String get fontSansBoldItalic => 'سانس عريض مائل';

  @override
  String get fontScript => 'سكريبت';

  @override
  String get fontScriptBold => 'سكريبت عريض';

  @override
  String get fontFraktur => 'فراكتر';

  @override
  String get fontFrakturBold => 'فراكتر عريض';

  @override
  String get fontMonospace => 'مونو سباس';

  @override
  String get fontFullwidth => 'عرض كامل';

  @override
  String get fontDoublestruck => 'مزدوج الخط';

  @override
  String get fontCapitalized => 'حروف كبيرة';

  @override
  String get fontCircled => 'مخطط دائري';

  @override
  String get fontParenthesized => 'مخطط بين قوسين';

  @override
  String get fontUnderlinedSingle => 'تحت خط';

  @override
  String get fontUnderlinedDouble => 'تحت خط مزدوج';

  @override
  String get fontStrikethroughSingle => 'تخطيط عبر الخط';

  @override
  String get fontCrosshatch => 'خطوط متقاطعة';

  @override
  String accountLoadError(String name) {
    return 'تعذر الاتصال بحسابك $name. هل تم تغيير كلمة المرور؟';
  }

  @override
  String get accountLoadErrorEditAction => 'تعديل الحساب';

  @override
  String get extensionsTitle => 'الإضافات';

  @override
  String get extensionsIntro =>
      'من خلال الإضافات، يمكن لمقدمي خدمات البريد الإلكتروني والشركات والمطورين تخصيص SAM مع وظائف مفيدة.';

  @override
  String get extensionsLearnMoreAction => 'تعلم المزيد عن الإضافات';

  @override
  String get extensionsReloadAction => 'إعادة تحميل الإضافات';

  @override
  String get extensionDeactivateAllAction => 'إلغاء تنشيط جميع الإضافات';

  @override
  String get extensionsManualAction => 'تحميل يدويًا';

  @override
  String get extensionsManualUrlLabel => 'رابط الإضافة';

  @override
  String extensionsManualLoadingError(String url) {
    return 'تعذر تنزيل الإضافة من \"$url\".';
  }

  @override
  String get icalendarAcceptTentatively => 'مبدئيًا';

  @override
  String get icalendarActionChangeParticipantStatus => 'تغيير';

  @override
  String get icalendarLabelSummary => 'العنوان';

  @override
  String get icalendarNoSummaryInfo => '(لا يوجد عنوان)';

  @override
  String get icalendarLabelDescription => 'الوصف';

  @override
  String get icalendarLabelStart => 'البداية';

  @override
  String get icalendarLabelEnd => 'النهاية';

  @override
  String get icalendarLabelDuration => 'المدة';

  @override
  String get icalendarLabelLocation => 'الموقع';

  @override
  String get icalendarLabelTeamsUrl => 'الرابط';

  @override
  String get icalendarLabelRecurrenceRule => 'يتكرر';

  @override
  String get icalendarLabelParticipants => 'المشاركون';

  @override
  String get icalendarParticipantStatusNeedsAction =>
      'يُطلب منك الرد على هذه الدعوة.';

  @override
  String get icalendarParticipantStatusAccepted => 'لقد قبلت هذه الدعوة.';

  @override
  String get icalendarParticipantStatusDeclined => 'لقد رفضت هذه الدعوة.';

  @override
  String get icalendarParticipantStatusAcceptedTentatively =>
      'لقد قبلت هذه الدعوة مبدئيًا.';

  @override
  String get icalendarParticipantStatusDelegated => 'لقد فوَّضت هذه الدعوة.';

  @override
  String get icalendarParticipantStatusInProcess => 'المهمة قيد التنفيذ.';

  @override
  String get icalendarParticipantStatusPartial => 'المهمة جزئيًا منجزة.';

  @override
  String get icalendarParticipantStatusCompleted => 'تم إنجاز المهمة.';

  @override
  String get icalendarParticipantStatusOther => 'حالتك غير معروفة.';

  @override
  String get icalendarParticipantStatusChangeTitle => 'حالتك';

  @override
  String get icalendarParticipantStatusChangeText =>
      'هل ترغب في قبول هذه الدعوة؟';

  @override
  String icalendarParticipantStatusSentFailure(String details) {
    return 'تعذر إرسال الرد.\nاستجاب الخادم بالتفاصيل التالية:\n$details';
  }

  @override
  String get icalendarExportAction => 'تصدير';

  @override
  String icalendarReplyStatusNeedsAction(String attendee) {
    return '$attendee لم يرد على هذه الدعوة.';
  }

  @override
  String icalendarReplyStatusAccepted(String attendee) {
    return '$attendee قبل الموعد.';
  }

  @override
  String icalendarReplyStatusDeclined(String attendee) {
    return '$attendee رفض هذه الدعوة.';
  }

  @override
  String icalendarReplyStatusAcceptedTentatively(String attendee) {
    return '$attendee قبل هذه الدعوة مبدئيًا.';
  }

  @override
  String icalendarReplyStatusDelegated(String attendee) {
    return '$attendee فوَّض هذه الدعوة.';
  }

  @override
  String icalendarReplyStatusInProcess(String attendee) {
    return '$attendee بدأ هذه المهمة.';
  }

  @override
  String icalendarReplyStatusPartial(String attendee) {
    return '$attendee أنجز جزئيًا هذه المهمة.';
  }

  @override
  String icalendarReplyStatusCompleted(String attendee) {
    return '$attendee أنهى هذه المهمة.';
  }

  @override
  String icalendarReplyStatusOther(String attendee) {
    return '$attendee أجاب بحالة غير معروفة.';
  }

  @override
  String get icalendarReplyWithoutParticipants =>
      'هذا الرد في التقويم لا يحتوي على مشاركين.';

  @override
  String icalendarReplyWithoutStatus(String attendee) {
    return '$attendee رد دون حالة مشاركة.';
  }

  @override
  String get composeAppointmentTitle => 'إنشاء موعد';

  @override
  String get composeAppointmentLabelDay => 'اليوم';

  @override
  String get composeAppointmentLabelTime => 'الوقت';

  @override
  String get composeAppointmentLabelAllDayEvent => 'طوال اليوم';

  @override
  String get composeAppointmentLabelRepeat => 'تكرار';

  @override
  String get composeAppointmentLabelRepeatOptionNever => 'أبدًا';

  @override
  String get composeAppointmentLabelRepeatOptionDaily => 'يوميًا';

  @override
  String get composeAppointmentLabelRepeatOptionWeekly => 'أسبوعيًا';

  @override
  String get composeAppointmentLabelRepeatOptionMonthly => 'شهريًا';

  @override
  String get composeAppointmentLabelRepeatOptionYearly => 'سنويًا';

  @override
  String get composeAppointmentRecurrenceFrequencyLabel => 'التكرار';

  @override
  String get composeAppointmentRecurrenceIntervalLabel => 'الفاصل الزمني';

  @override
  String get composeAppointmentRecurrenceDaysLabel => 'في الأيام';

  @override
  String get composeAppointmentRecurrenceUntilLabel => 'حتى';

  @override
  String get composeAppointmentRecurrenceUntilOptionUnlimited => 'غير محدود';

  @override
  String composeAppointmentRecurrenceUntilOptionRecommended(String duration) {
    return 'موصى به ($duration)';
  }

  @override
  String get composeAppointmentRecurrenceUntilOptionSpecificDate =>
      'حتى تاريخ معين';

  @override
  String composeAppointmentRecurrenceMonthlyOnDayOfMonth(int day) {
    final intl.NumberFormat dayNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String dayString = dayNumberFormat.format(day);

    return 'في اليوم $dayString من الشهر';
  }

  @override
  String get composeAppointmentRecurrenceMonthlyOnWeekDay =>
      'يوم الأسبوع في الشهر';

  @override
  String get composeAppointmentRecurrenceFirst => 'الأول';

  @override
  String get composeAppointmentRecurrenceSecond => 'الثاني';

  @override
  String get composeAppointmentRecurrenceThird => 'الثالث';

  @override
  String get composeAppointmentRecurrenceLast => 'الأخير';

  @override
  String get composeAppointmentRecurrenceSecondLast => 'قبل الأخير';

  @override
  String durationYears(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString سنوات',
      one: '1 سنة',
    );
    return '$_temp0';
  }

  @override
  String durationMonths(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString أشهر',
      one: '1 شهر',
    );
    return '$_temp0';
  }

  @override
  String durationWeeks(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString أسابيع',
      one: '1 أسبوع',
    );
    return '$_temp0';
  }

  @override
  String durationDays(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString أيام',
      one: '1 يوم',
    );
    return '$_temp0';
  }

  @override
  String durationHours(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString ساعات',
      one: '1 ساعة',
    );
    return '$_temp0';
  }

  @override
  String durationMinutes(int number) {
    final intl.NumberFormat numberNumberFormat = intl.NumberFormat.compactLong(
      locale: localeName,
    );
    final String numberString = numberNumberFormat.format(number);

    String _temp0 = intl.Intl.pluralLogic(
      number,
      locale: localeName,
      other: '$numberString دقائق',
      one: '1 دقيقة',
    );
    return '$_temp0';
  }

  @override
  String get durationEmpty => 'لا توجد مدة';
}
