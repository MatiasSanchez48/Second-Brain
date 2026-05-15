import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_brain/app/router/router.dart';
import 'package:second_brain/l10n/gen/app_localizations.dart';
import 'package:second_brain/utils/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({required this.prefs, super.key});

  ///
  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

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
