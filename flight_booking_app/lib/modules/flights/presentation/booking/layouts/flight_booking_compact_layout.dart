import 'package:flight_booking_app/core/router/app_router.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:flight_booking_app/modules/flights/presentation/bloc/flight_booking_cubit.dart';
import 'package:flight_booking_app/modules/flights/presentation/booking/widgets/flight_summary_card.dart';
import 'package:flight_booking_app/modules/flights/presentation/booking/widgets/passenger_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightBookingCompactLayout extends StatelessWidget {
  const FlightBookingCompactLayout({required this.flight, super.key});

  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlightBookingCubit(
        context.read<FlightRepository>(),
      ),
      child: _FlightBookingContent(flight: flight),
    );
  }
}

class _FlightBookingContent extends StatefulWidget {
  const _FlightBookingContent({required this.flight});

  final Flight flight;

  @override
  State<_FlightBookingContent> createState() => _FlightBookingContentState();
}

class _FlightBookingContentState extends State<_FlightBookingContent> {
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
    return Scaffold(
      appBar: AppBar(title: const Text('Book Flight')),
      body: BlocConsumer<FlightBookingCubit, FlightBookingState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Flight Booked Successfully!')),
              );
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
                FlightSummaryCard(flight: widget.flight),
                const SizedBox(height: 24),
                PassengerForm(
                  passengerCount: _passengerCount,
                  nameControllers: _nameControllers,
                  passportControllers: _passportControllers,
                  onPassengerCountChanged: (val) {
                    if (val != null) {
                      setState(() {
                        _passengerCount = val;
                        _updateControllers();
                      });
                    }
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
    );
  }
}
