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

@freezed
sealed class Airline with _$Airline {
  const factory Airline({
    required String name,
    required String code,
  }) = _Airline;

  factory Airline.fromJson(Map<String, dynamic> json) =>
      _$AirlineFromJson(json);
}

@freezed
sealed class Airport with _$Airport {
  const factory Airport({
    required String code,
    required String city,
    required String country,
    required String name,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);
}
