import 'package:flight_booking_app/modules/flights/data/models/airline_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/airport_model.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_model.freezed.dart';

@freezed
sealed class FlightModel with _$FlightModel {
  const factory FlightModel({
    required int id,
    required AirlineModel airline,
    required String flightNumber,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required AirportModel origin,
    required AirportModel destination,
    required double price,
  }) = _FlightModel;

  const FlightModel._();

  /// Convert model to domain entity
  Flight toEntity() {
    return Flight(
      id: id,
      airline: airline.toEntity(),
      flightNumber: flightNumber,
      departureTime: departureTime,
      arrivalTime: arrivalTime,
      origin: origin.toEntity(),
      destination: destination.toEntity(),
      price: price,
    );
  }
}
