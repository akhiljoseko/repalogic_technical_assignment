import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/presentation/booking/layouts/flight_booking_compact_layout.dart';
import 'package:flight_booking_app/shared/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

class FlightBookingScreen extends StatelessWidget {
  const FlightBookingScreen({required this.flight, super.key});

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (_, _, _) => FlightBookingCompactLayout(flight: flight),
    );
  }
}
