import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_results/layouts/flight_results_compact_layout.dart';
import 'package:flight_booking_app/shared/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

class FlightResultsScreen extends StatelessWidget {
  const FlightResultsScreen({required this.flights, super.key});

  final List<Flight> flights;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (_, _, _) => FlightResultsCompactLayout(flights: flights),
    );
  }
}
