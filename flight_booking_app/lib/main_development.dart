import 'package:flight_booking_app/app/app.dart';
import 'package:flight_booking_app/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
