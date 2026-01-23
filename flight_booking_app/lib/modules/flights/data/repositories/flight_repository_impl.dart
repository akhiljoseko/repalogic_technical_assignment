import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/data/api/flight_api.dart';
import 'package:flight_booking_app/modules/flights/data/models/flight_dto.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';

class FlightRepositoryImpl implements FlightRepository {
  FlightRepositoryImpl(this._api);

  final FlightApi _api;

  @override
  Future<Result<List<Flight>>> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  }) async {
    try {
      final flightDtos = await _api.searchFlights(origin, destination, date);
      final flights = flightDtos.map(_mapDtoToEntity).toList();
      return Result.ok(flights);
    } catch (e) {
      return Result.error(
        Exception('Failed to search flights: $e') as Never,
      );
    }
  }

  @override
  Future<Result<bool>> bookFlight({
    required int flightId,
    required List<PassengerInfo> passengers,
  }) async {
    try {
      final passengerDtos = passengers.map(_mapPassengerToDto).toList();
      final success = await _api.bookFlight(flightId, passengerDtos);
      return Result.ok(success);
    } catch (e) {
      return Result.error(
        Exception('Failed to book flight: $e') as Never,
      );
    }
  }

  /// Map FlightDto to Flight entity
  Flight _mapDtoToEntity(FlightDto dto) {
    return Flight(
      id: dto.id,
      airline: Airline(
        name: dto.airline.name,
        code: dto.airline.code,
      ),
      flightNumber: dto.flightNumber,
      departureTime: dto.departureTime,
      arrivalTime: dto.arrivalTime,
      origin: Airport(
        code: dto.origin.code,
        city: dto.origin.city,
        country: dto.origin.country,
        name: dto.origin.name,
      ),
      destination: Airport(
        code: dto.destination.code,
        city: dto.destination.city,
        country: dto.destination.country,
        name: dto.destination.name,
      ),
      price: dto.price,
    );
  }

  /// Map PassengerInfo entity to PassengerDto
  PassengerDto _mapPassengerToDto(PassengerInfo passenger) {
    return PassengerDto(
      name: passenger.name,
      passportNumber: passenger.passportNumber,
    );
  }
}
