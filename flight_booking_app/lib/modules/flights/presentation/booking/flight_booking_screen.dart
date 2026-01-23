import 'package:flight_booking_app/core/router/app_router.dart';
import 'package:flight_booking_app/modules/flights/data/repositories/flight_repository_impl.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/presentation/bloc/flight_booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightBookingScreen extends StatefulWidget {
  const FlightBookingScreen({required this.flight, super.key});

  final Flight flight;

  @override
  State<FlightBookingScreen> createState() => _FlightBookingScreenState();
}

class _FlightBookingScreenState extends State<FlightBookingScreen> {
  int _passengerCount = 1;
  final List<TextEditingController> _nameControllers = [];
  final List<TextEditingController> _passportControllers = [];

  @override
  void initState() {
    super.initState();
    _updateControllers();
  }

  void _updateControllers() {
    while (_nameControllers.length < _passengerCount) {
      _nameControllers.add(TextEditingController());
      _passportControllers.add(TextEditingController());
    }
    while (_nameControllers.length > _passengerCount) {
      _nameControllers.last.dispose();
      _passportControllers.last.dispose();
      _nameControllers.removeLast();
      _passportControllers.removeLast();
    }
  }

  @override
  void dispose() {
    for (var c in _nameControllers) c.dispose();
    for (var c in _passportControllers) c.dispose();
    super.dispose();
  }

  void _bookFlight(BuildContext context) {
    // Validate inputs
    for (int i = 0; i < _passengerCount; i++) {
      if (_nameControllers[i].text.isEmpty ||
          _passportControllers[i].text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please fill all details for Passenger ${i + 1}'),
          ),
        );
        return;
      }
    }

    final passengers = List.generate(_passengerCount, (index) {
      return PassengerInfo(
        name: _nameControllers[index].text,
        passportNumber: _passportControllers[index].text,
      );
    });

    context.read<FlightBookingCubit>().bookFlight(
      flightId: widget.flight.id,
      passengers: passengers,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlightBookingCubit(FlightRepositoryImpl()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Book Flight')),
        body: BlocConsumer<FlightBookingCubit, FlightBookingState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Flight Booked Successfully!')),
                );
                // context.go('/'); // Go back to home
                const BookingSuccessRoute().go(context);
              },
              failure: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(msg)),
                );
              },
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildFlightSummary(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Passengers',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      DropdownButton<int>(
                        value: _passengerCount,
                        items: List.generate(5, (index) => index + 1)
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text('$e Adult(s)'),
                              ),
                            )
                            .toList(),
                        onChanged: (val) {
                          if (val != null) {
                            setState(() {
                              _passengerCount = val;
                              _updateControllers();
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _passengerCount,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Passenger ${index + 1}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _nameControllers[index],
                                decoration: const InputDecoration(
                                  labelText: 'Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _passportControllers[index],
                                decoration: const InputDecoration(
                                  labelText: 'Passport Number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: isLoading ? null : () => _bookFlight(context),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Book Ticket'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFlightSummary() {
    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              widget.flight.airline.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.flight.origin.city} (${widget.flight.origin.code})',
                ),
                const Icon(Icons.arrow_forward),
                Text(
                  '${widget.flight.destination.city} (${widget.flight.destination.code})',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Price: \$${widget.flight.price}',
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
