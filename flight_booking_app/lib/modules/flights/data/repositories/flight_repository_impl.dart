import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/data/api/flight_api.dart';
import 'package:flight_booking_app/modules/flights/data/models/passenger_model.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/passenger_info.dart';
import 'package:flight_booking_app/modules/flights/domain/exceptions/flight_exceptions.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';

/// Implementation of [FlightRepository] that interacts with [FlightApi].
///
/// Handles data transformation from DTOs (Data Transfer Objects) to Domain Entities
/// and error handling by mapping exceptions to domain-specific failures.
class FlightRepositoryImpl implements FlightRepository {
  /// Creates a [FlightRepositoryImpl] with the given [FlightApi].
  FlightRepositoryImpl(this._api);

  final FlightApi _api;

  @override
  Future<Result<List<Flight>>> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  }) async {
    try {
      // Fetch flight models from API
      final flightModels = await _api.searchFlights(origin, destination, date);

      // Map API models to Domain entities
      final flights = flightModels.map((model) => model.toEntity()).toList();

      return Result.ok(flights);
    } catch (e) {
      // Wrap generic errors in specific domain exception
      return Result.error(
        FlightSearchException() as Never,
      );
    }
  }

  @override
  Future<Result<bool>> bookFlight({
    required int flightId,
    required List<PassengerInfo> passengers,
  }) async {
    try {
      // Map domain entities to API models
      final passengerModels = passengers
          .map(PassengerModel.fromEntity)
          .toList();

      // Perform booking request
      final success = await _api.bookFlight(flightId, passengerModels);
      return Result.ok(success);
    } catch (e) {
      return Result.error(
        FlightBookingException() as Never,
      );
    }
  }

  @override
  Future<Result<List<Airport>>> searchAirports(String query) async {
    try {
      final airportModels = await _api.searchAirports(query);
      final airports = airportModels.map((model) => model.toEntity()).toList();
      return Result.ok(airports);
    } catch (e) {
      return Result.error(
        AirportSearchException() as Never,
      );
    }
  }
}
