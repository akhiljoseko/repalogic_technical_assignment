import 'package:flight_booking_app/modules/flights/data/models/airport_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/flight_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/passenger_model.dart';

/// Abstract interface for Flight API operations
abstract class FlightApi {
  /// Search for flights between origin and destination on a specific date
  Future<List<FlightModel>> searchFlights(
    String origin,
    String destination,
    DateTime date,
  );

  /// Book a flight with passenger information
  Future<bool> bookFlight(
    int flightId,
    List<PassengerModel> passengers,
  );

  /// Search for airports by query (city, code, or name)
  Future<List<AirportModel>> searchAirports(String query);
}
