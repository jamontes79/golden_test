import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden/l10n/l10n.dart';
import 'package:golden/login/login_page.dart';
import 'package:golden_toolkit/golden_toolkit.dart' show loadAppFonts;

void main() {
  setUpAll(() async {
    // this is the relevant line of code
    await loadAppFonts();
  });

  group('Status golden test', () {
    goldenTest(
      'renders correctly',
      fileName: 'login_page',
      pumpBeforeTest: precacheImages,
      builder: () => GoldenTestGroup(
        columnWidthBuilder: (_) => const FlexColumnWidth(),
        children: [
          GoldenTestScenario(
            name: 'english',
            child: ClipRect(
              child: SizedBox(
                width: 414,
                height: 896,
                child: MaterialApp(
                  theme: ThemeData(
                    appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
                    colorScheme: ColorScheme.fromSwatch(
                      accentColor: const Color(0xFF13B9FF),
                    ),
                  ),
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    DefaultWidgetsLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  debugShowCheckedModeBanner: false,
                  supportedLocales: AppLocalizations.supportedLocales,
                  home: const LoginPage(),
                ),
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'spanish',
            child: ClipRect(
              child: SizedBox(
                width: 414,
                height: 896,
                child: MaterialApp(
                  theme: ThemeData(
                    appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
                    colorScheme: ColorScheme.fromSwatch(
                      accentColor: const Color(0xFF13B9FF),
                    ),
                  ),
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    DefaultWidgetsLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  debugShowCheckedModeBanner: false,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: const Locale('es'),
                  home: const LoginPage(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
