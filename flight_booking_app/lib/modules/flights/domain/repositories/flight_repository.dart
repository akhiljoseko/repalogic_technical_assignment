import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/passenger_info.dart';

/// Repository interface for flight-related operations.
///
/// This repository manages data fetching and booking logic for flights,
/// serving as the bridge between the domain layer and data sources.
abstract class FlightRepository {
  /// Searches for flights matching the specified criteria.
  ///
  /// [origin] - The airport code or city name of the origin.
  /// [destination] - The airport code or city name of the destination.
  /// [date] - The intended date of travel.
  ///
  /// Returns a [Result] containing a list of matching [Flight] entities on success,
  /// or a [FlightSearchException] on failure.
  Future<Result<List<Flight>>> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  });

  /// Books a flight for a list of passengers.
  ///
  /// [flightId] - The unique identifier of the flight to book.
  /// [passengers] - A list of [PassengerInfo] containing passenger details.
  ///
  /// Returns a [Result] wrapping `true` if booking is successful,
  /// or a [FlightBookingException] on failure.
  Future<Result<bool>> bookFlight({
    required int flightId,
    required List<PassengerInfo> passengers,
  });

  /// Searches for airports based on a query string.
  ///
  /// [query] - A search term matching airport name, code, or city.
  ///
  /// Returns a [Result] containing a list of matching [Airport] entities,
  /// or an [AirportSearchException] on failure.
  Future<Result<List<Airport>>> searchAirports(String query);
}
