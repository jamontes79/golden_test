import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden/l10n/l10n.dart';
import 'package:golden/login/login_page.dart';

void main() {
  group('Status golden test', () {
    goldenTest(
      'renders correctly in english',
      fileName: 'login_page_english',
      pumpBeforeTest: precacheImages,
      builder: () => GoldenTestGroup(
        columnWidthBuilder: (_) => const FlexColumnWidth(),
        children: [
          GoldenTestScenario(
            name: 'login',
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
        ],
      ),
    );

    goldenTest(
      'renders correctly in spanish',
      fileName: 'login_page_spanish',
      pumpBeforeTest: precacheImages,
      builder: () => GoldenTestGroup(
        columnWidthBuilder: (_) => const FlexColumnWidth(),
        children: [
          GoldenTestScenario(
            name: 'login',
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
                  locale: const Locale('es'),
                  supportedLocales: AppLocalizations.supportedLocales,
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
