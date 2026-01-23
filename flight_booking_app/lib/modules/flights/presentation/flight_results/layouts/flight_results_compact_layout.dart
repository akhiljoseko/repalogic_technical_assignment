import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_results/widgets/flight_card.dart';
import 'package:flutter/material.dart';

class FlightResultsCompactLayout extends StatelessWidget {
  const FlightResultsCompactLayout({required this.flights, super.key});

  final List<Flight> flights;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Search Results',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: flights.isEmpty
          ? const Center(child: Text('No flights found'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: flights.length,
              itemBuilder: (context, index) {
                final flight = flights[index];
                return FlightCard(flight: flight);
              },
            ),
    );
  }
}
