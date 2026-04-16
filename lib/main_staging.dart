import 'package:second_brain/app/app.dart';
import 'package:second_brain/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
