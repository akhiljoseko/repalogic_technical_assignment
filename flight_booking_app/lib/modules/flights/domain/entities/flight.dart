import 'package:flight_booking_app/modules/flights/domain/entities/airline.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight.freezed.dart';
part 'flight.g.dart';

@freezed
sealed class Flight with _$Flight {
  const factory Flight({
    required int id,
    required Airline airline,
    required String flightNumber,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required Airport origin,
    required Airport destination,
    required double price,
  }) = _Flight;

  factory Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);
}
