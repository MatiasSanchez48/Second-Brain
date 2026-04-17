import 'package:flutter/material.dart';
import 'package:second_brain/app/router/router.dart';
import 'package:second_brain/l10n/gen/app_localizations.dart';
import 'package:second_brain/utils/extensions/extensions.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
