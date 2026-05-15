import 'package:flutter/material.dart';
import 'package:second_brain/app/app.dart';
import 'package:second_brain/bootstrap.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  await bootstrap(() => App(prefs: prefs));
}
