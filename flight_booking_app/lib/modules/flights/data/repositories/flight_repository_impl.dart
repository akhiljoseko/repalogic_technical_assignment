import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';

class FlightRepositoryImpl implements FlightRepository {
  @override
  Future<Result<List<Flight>>> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 1)); // Simulate delay

    final dummyFlights = [
      Flight(
        id: 1,
        airline: const Airline(name: 'Emirates', code: 'EK'),
        flightNumber: 'EK202',
        departureTime: DateTime(date.year, date.month, date.day, 10, 0),
        arrivalTime: DateTime(date.year, date.month, date.day, 14, 0),
        origin: Airport(
          code: origin,
          city: 'Dubai',
          country: 'UAE',
          name: 'Dubai International',
        ),
        destination: Airport(
          code: destination,
          city: 'London',
          country: 'UK',
          name: 'Heathrow',
        ),
        price: 1500,
      ),
      Flight(
        id: 2,
        airline: const Airline(name: 'Qatar Airways', code: 'QR'),
        flightNumber: 'QR505',
        departureTime: DateTime(date.year, date.month, date.day, 16, 0),
        arrivalTime: DateTime(date.year, date.month, date.day, 20, 30),
        origin: Airport(
          code: origin,
          city: 'Doha',
          country: 'Qatar',
          name: 'Hamad International',
        ),
        destination: Airport(
          code: destination,
          city: 'London',
          country: 'UK',
          name: 'Gatwick',
        ),
        price: 1200,
      ),
      Flight(
        id: 3,
        airline: const Airline(name: 'British Airways', code: 'BA'),
        flightNumber: 'BA101',
        departureTime: DateTime(date.year, date.month, date.day, 08, 00),
        arrivalTime: DateTime(date.year, date.month, date.day, 12, 00),
        origin: Airport(
          code: origin,
          city: 'London',
          country: 'UK',
          name: 'Heathrow',
        ),
        destination: Airport(
          code: destination,
          city: 'New York',
          country: 'USA',
          name: 'JFK',
        ),
        price: 1800,
      ),
    ];

    return Result.ok(dummyFlights);
  }
}
