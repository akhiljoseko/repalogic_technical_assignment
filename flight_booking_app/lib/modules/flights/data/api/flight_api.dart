import 'package:flight_booking_app/modules/flights/data/models/airport_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/flight_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/passenger_model.dart';

/// Abstract interface for Flight API operations
/// Abstract interface for Flight API operations.
///
/// Defines the contract for fetching flight data and performing bookings.
/// Implementations can be local (mock) or remote (REST/GraphQL).
abstract class FlightApi {
  /// Searches for flights between origin and destination on a specific date.
  ///
  /// [origin] - Origin airport code.
  /// [destination] - Destination airport code.
  /// [date] - Date of travel.
  ///
  /// Returns a list of [FlightModel] matching the criteria.
  Future<List<FlightModel>> searchFlights(
    String origin,
    String destination,
    DateTime date,
  );

  /// Books a flight with passenger information.
  ///
  /// [flightId] - ID of the flight to book.
  /// [passengers] - List of passenger details.
  ///
  /// Returns `true` if booking was successful, `false` otherwise.
  Future<bool> bookFlight(
    int flightId,
    List<PassengerModel> passengers,
  );

  /// Searches for airports by query (city, code, or name).
  ///
  /// [query] - Search term.
  ///
  /// Returns a list of matching [AirportModel].
  Future<List<AirportModel>> searchAirports(String query);
}
