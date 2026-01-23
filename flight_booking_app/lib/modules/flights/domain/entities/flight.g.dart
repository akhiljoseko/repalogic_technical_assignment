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

_Airline _$AirlineFromJson(Map<String, dynamic> json) =>
    _Airline(name: json['name'] as String, code: json['code'] as String);

Map<String, dynamic> _$AirlineToJson(_Airline instance) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
};

_Airport _$AirportFromJson(Map<String, dynamic> json) => _Airport(
  code: json['code'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$AirportToJson(_Airport instance) => <String, dynamic>{
  'code': instance.code,
  'city': instance.city,
  'country': instance.country,
  'name': instance.name,
};

_PassengerInfo _$PassengerInfoFromJson(Map<String, dynamic> json) =>
    _PassengerInfo(
      name: json['name'] as String,
      passportNumber: json['passportNumber'] as String,
    );

Map<String, dynamic> _$PassengerInfoToJson(_PassengerInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'passportNumber': instance.passportNumber,
    };
