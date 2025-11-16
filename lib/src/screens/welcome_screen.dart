import 'package:enough_platform_widgets/enough_platform_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../enough_mail_app.dart';
import '../settings/theme/icon_service.dart';

/// Displays a welcome screen
class WelcomeScreen extends ConsumerWidget {
  /// Creates a [WelcomeScreen]
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = ref.text;
    final pages = _buildPages(context, localizations);
    final defaultColor = ref.watch(defaultColorSeedProvider);

    return Theme(
      data: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
        brightness: Brightness.dark,
        primarySwatch:
            defaultColor is MaterialColor ? defaultColor : Colors.blue,
      ),
      child: SafeArea(
        child: PlatformScaffold(
          body: IntroductionScreen(
              pages: pages,
              done: Text(localizations.actionDone),
              onDone: () {
                context.goNamed(Routes.accountAdd);
              },
              next: Text(localizations.actionNext),
              skip: Text(localizations.actionSkip),
              showSkipButton: true,
              dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeColor: Theme.of(context).colorScheme.secondary,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              dotsContainerDecorator: BoxDecoration(color: Colors.white)),
        ),
      ),
    ); //Material App
  }

  List<PageViewModel> _buildPages(
    BuildContext context,
    AppLocalizations localizations,
  ) =>
      [
        PageViewModel(
          title: localizations.welcomePanel1Title,
          body: localizations.welcomePanel1Text,
          image: Image.asset(
            'assets/images/one.png',
            fit: BoxFit.cover,
            package: 'enough_mail_app',
            height: 150,
          ),
          decoration: PageDecoration(
            pageColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
          footer: _buildFooter(context, localizations),
        ),
        PageViewModel(
          title: localizations.welcomePanel2Title,
          body: localizations.welcomePanel2Text,
          image: Image.asset(
            'assets/images/two.jpg',
            height: 150,
            fit: BoxFit.cover,
            package: 'enough_mail_app',
          ),
          decoration: PageDecoration(
            pageColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
          footer: _buildFooter(context, localizations),
        ),
        PageViewModel(
          title: localizations.welcomePanel3Title,
          body: localizations.welcomePanel3Text,
          image: Image.asset(
            'assets/images/three.jpg',
            height: 150,
            fit: BoxFit.cover,
            package: 'enough_mail_app',
          ),
          decoration: PageDecoration(
            pageColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
          footer: _buildFooter(context, localizations),
        ),
        PageViewModel(
          title: localizations.welcomePanel4Title,
          body: localizations.welcomePanel4Text,
          image: Image.asset(
            'assets/images/five.jpg',
            height: 150,
            fit: BoxFit.cover,
            package: 'enough_mail_app',
          ),
          footer: _buildFooter(context, localizations),
          decoration: PageDecoration(
            pageColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
            bodyTextStyle: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
        ),
      ];

  Widget _buildFooter(BuildContext context, AppLocalizations localizations) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Shimmer(
              duration: const Duration(seconds: 4),
              interval: const Duration(seconds: 6),
              child: PlatformFilledButtonIcon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6167f7)),
                icon: Icon(IconService.instance.email),
                label: Center(
                  child: Text(localizations.welcomeActionSignIn),
                ),
                onPressed: () {
                  context.goNamed(Routes.accountAdd);
                },
              ),
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          //   child: Legalese(),
          // ),
        ],
      );
}
