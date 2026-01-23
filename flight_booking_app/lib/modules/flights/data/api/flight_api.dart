import 'package:flight_booking_app/modules/flights/data/models/flight_dto.dart';

/// Abstract interface for Flight API operations
abstract class FlightApi {
  /// Search for flights between origin and destination on a specific date
  Future<List<FlightDto>> searchFlights(
    String origin,
    String destination,
    DateTime date,
  );

  /// Book a flight with passenger information
  Future<bool> bookFlight(
    int flightId,
    List<PassengerDto> passengers,
  );
}
