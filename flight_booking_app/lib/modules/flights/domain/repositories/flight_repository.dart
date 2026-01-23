import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';

abstract class FlightRepository {
  Future<Result<List<Flight>>> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  });
  Future<Result<bool>> bookFlight({
    required int flightId,
    required List<PassengerInfo> passengers,
  });
}
