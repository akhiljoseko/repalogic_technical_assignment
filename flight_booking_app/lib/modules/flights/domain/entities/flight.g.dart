// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Flight _$FlightFromJson(Map<String, dynamic> json) => _Flight(
  id: (json['id'] as num).toInt(),
  airline: Airline.fromJson(json['airline'] as Map<String, dynamic>),
  flightNumber: json['flightNumber'] as String,
  departureTime: DateTime.parse(json['departureTime'] as String),
  arrivalTime: DateTime.parse(json['arrivalTime'] as String),
  origin: Airport.fromJson(json['origin'] as Map<String, dynamic>),
  destination: Airport.fromJson(json['destination'] as Map<String, dynamic>),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$FlightToJson(_Flight instance) => <String, dynamic>{
  'id': instance.id,
  'airline': instance.airline,
  'flightNumber': instance.flightNumber,
  'departureTime': instance.departureTime.toIso8601String(),
  'arrivalTime': instance.arrivalTime.toIso8601String(),
  'origin': instance.origin,
  'destination': instance.destination,
  'price': instance.price,
};
