import 'dart:math';

import 'package:flight_booking_app/modules/flights/data/api/flight_api.dart';
import 'package:flight_booking_app/modules/flights/data/datasources/hardcoded_airports.dart';
import 'package:flight_booking_app/modules/flights/data/models/airline_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/airport_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/flight_model.dart';
import 'package:flight_booking_app/modules/flights/data/models/passenger_model.dart';

/// Local implementation of [FlightApi] that generates flights at runtime.
///
/// Simulates a backend by generating random flight data, including airlines,
/// times, and prices. Also simulates network latency.
class FlightLocalApi implements FlightApi {
  /// Creates a [FlightLocalApi] instance.
  FlightLocalApi() : _random = Random();

  final Random _random;

  // Convert domain Airport entities to Models for internal use
  static final List<AirportModel> _airports = kHardcodedAirports
      .map(
        (airport) => AirportModel(
          code: airport.code,
          city: airport.city,
          country: airport.country,
          name: airport.name,
        ),
      )
      .toList();

  static const List<AirlineModel> _airlines = [
    AirlineModel(name: 'Emirates', code: 'EK'),
    AirlineModel(name: 'Qatar Airways', code: 'QR'),
    AirlineModel(name: 'Singapore Airlines', code: 'SQ'),
    AirlineModel(name: 'Lufthansa', code: 'LH'),
    AirlineModel(name: 'British Airways', code: 'BA'),
    AirlineModel(name: 'Air France', code: 'AF'),
    AirlineModel(name: 'Delta', code: 'DL'),
    AirlineModel(name: 'United', code: 'UA'),
    AirlineModel(name: 'American Airlines', code: 'AA'),
    AirlineModel(name: 'KLM', code: 'KL'),
  ];

  @override
  Future<List<FlightModel>> searchFlights(
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
    final flights = <FlightModel>[];

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
        FlightModel(
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
    List<PassengerModel> passengers,
  ) async {
    // Simulate booking processing
    await Future<void>.delayed(const Duration(seconds: 2));
    return true;
  }

  @override
  Future<List<AirportModel>> searchAirports(String query) async {
    if (query.isEmpty) {
      return [];
    }

    final lowerQuery = query.toLowerCase();
    return _airports.where((airport) {
      return airport.city.toLowerCase().contains(lowerQuery) ||
          airport.code.toLowerCase().contains(lowerQuery) ||
          airport.name.toLowerCase().contains(lowerQuery);
    }).toList();
  }

  /// Finds an airport by its exact code (case-insensitive).
  ///
  /// Returns `null` if no airport is found with the given code.
  AirportModel? _findAirport(String cityQuery) {
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
