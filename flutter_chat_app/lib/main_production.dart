import 'package:flutter_chat_app/app/app.dart';
import 'package:flutter_chat_app/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
