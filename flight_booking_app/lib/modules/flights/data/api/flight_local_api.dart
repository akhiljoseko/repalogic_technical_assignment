import 'dart:math';

import 'package:flight_booking_app/modules/flights/data/api/flight_api.dart';
import 'package:flight_booking_app/modules/flights/data/datasources/hardcoded_airports.dart';
import 'package:flight_booking_app/modules/flights/data/models/flight_dto.dart';

/// Local implementation of FlightApi that generates flights at runtime
class FlightLocalApi implements FlightApi {
  FlightLocalApi() : _random = Random();

  final Random _random;

  // Convert domain Airport entities to DTOs for internal use
  static final List<AirportDto> _airports = kHardcodedAirports
      .map(
        (airport) => AirportDto(
          code: airport.code,
          city: airport.city,
          country: airport.country,
          name: airport.name,
        ),
      )
      .toList();

  static const List<AirlineDto> _airlines = [
    AirlineDto(name: 'Emirates', code: 'EK'),
    AirlineDto(name: 'Qatar Airways', code: 'QR'),
    AirlineDto(name: 'Singapore Airlines', code: 'SQ'),
    AirlineDto(name: 'Lufthansa', code: 'LH'),
    AirlineDto(name: 'British Airways', code: 'BA'),
    AirlineDto(name: 'Air France', code: 'AF'),
    AirlineDto(name: 'Delta', code: 'DL'),
    AirlineDto(name: 'United', code: 'UA'),
    AirlineDto(name: 'American Airlines', code: 'AA'),
    AirlineDto(name: 'KLM', code: 'KL'),
  ];

  @override
  Future<List<FlightDto>> searchFlights(
    String origin,
    String destination,
    DateTime date,
  ) async {
    // Simulate network delay
    await Future<void>.delayed(const Duration(seconds: 1));

    // Find matching airports
    final originAirport = _findAirport(origin);
    final destinationAirport = _findAirport(destination);

    if (originAirport == null || destinationAirport == null) {
      return [];
    }

    // Generate 10-15 flights
    final numFlights = 10 + _random.nextInt(6); // 10-15 flights
    final flights = <FlightDto>[];

    for (var i = 0; i < numFlights; i++) {
      final airline = _airlines[_random.nextInt(_airlines.length)];
      final flightNumber = '${airline.code}${100 + _random.nextInt(900)}';

      // Generate departure time spread throughout the day (6am-11pm)
      final departureHour = 6 + _random.nextInt(17); // 6-22
      final departureMinute = _random.nextInt(60);
      final departureTime = DateTime(
        date.year,
        date.month,
        date.day,
        departureHour,
        departureMinute,
      );

      // Generate realistic flight duration (2-12 hours)
      final durationHours = 2 + _random.nextInt(11);
      final arrivalTime = departureTime.add(Duration(hours: durationHours));

      // Generate price ($200-$1500)
      final price = 200.0 + _random.nextInt(1301);

      flights.add(
        FlightDto(
          id: i + 1,
          airline: airline,
          flightNumber: flightNumber,
          departureTime: departureTime,
          arrivalTime: arrivalTime,
          origin: originAirport,
          destination: destinationAirport,
          price: price,
        ),
      );
    }

    // Sort by departure time
    flights.sort((a, b) => a.departureTime.compareTo(b.departureTime));

    return flights;
  }

  @override
  Future<bool> bookFlight(
    int flightId,
    List<PassengerDto> passengers,
  ) async {
    // Simulate booking processing
    await Future<void>.delayed(const Duration(seconds: 2));
    return true;
  }

  /// Find airport by city name (case-insensitive contains match)
  AirportDto? _findAirport(String cityQuery) {
    final query = cityQuery.toLowerCase();
    try {
      return _airports.firstWhere(
        (airport) => airport.code.toLowerCase().contains(query),
      );
    } catch (_) {
      return null;
    }
  }
}
