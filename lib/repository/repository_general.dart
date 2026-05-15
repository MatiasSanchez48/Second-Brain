import 'package:shared_preferences/shared_preferences.dart';

abstract class RepositoryGeneral {
  const RepositoryGeneral({required this.prefs});

  ///
  final SharedPreferences prefs;

  ///
  static String get keyNotes => 'notes';
}
