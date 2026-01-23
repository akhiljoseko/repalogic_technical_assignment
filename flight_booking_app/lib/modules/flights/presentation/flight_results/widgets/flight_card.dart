import 'package:flight_booking_app/core/router/app_router.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flutter/material.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({required this.flight, super.key});

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => FlightBookingRoute($extra: flight).go(context),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // Just using text code/icon since no logo
                    child: Text(
                      flight.airline.code,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          flight.airline.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              '${flight.departureTime.hour}:${flight.departureTime.minute.toString().padLeft(2, '0')}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '${flight.arrivalTime.hour}:${flight.arrivalTime.minute.toString().padLeft(2, '0')}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$${flight.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const Divider(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAirportInfo(flight.origin.code, flight.origin.city),
                  const Icon(Icons.flight_takeoff, color: Colors.grey),
                  _buildAirportInfo(
                    flight.destination.code,
                    flight.destination.city,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAirportInfo(String code, String city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          code,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        Text(city, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
