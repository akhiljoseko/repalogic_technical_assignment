import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flutter/material.dart';
import 'package:flight_booking_app/l10n/gen/app_localizations.dart';

class FlightSummaryCard extends StatelessWidget {
  const FlightSummaryCard({required this.flight, super.key});

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              flight.airline.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${flight.origin.city} (${flight.origin.code})',
                ),
                const Icon(Icons.arrow_forward),
                Text(
                  '${flight.destination.city} (${flight.destination.code})',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.lblPrice(flight.price),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
