import 'package:flight_booking_app/modules/flights/presentation/flight_search/layouts/flight_search_compact_layout.dart';
import 'package:flight_booking_app/shared/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

class FlightSearchScreen extends StatelessWidget {
  const FlightSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (_, _, _) => const FlightSearchCompactLayout(),
    );
  }
}
