import 'package:flight_booking_app/core/router/app_router.dart';
import 'package:flight_booking_app/modules/flights/data/repositories/flight_repository_impl.dart';
import 'package:flight_booking_app/modules/flights/presentation/bloc/flight_search_cubit.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_search/widgets/date_selector_card.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_search/widgets/location_input_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightSearchCompactLayout extends StatelessWidget {
  const FlightSearchCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlightSearchCubit(FlightRepositoryImpl()),
      child: const _FlightSearchContent(),
    );
  }
}

class _FlightSearchContent extends StatefulWidget {
  const _FlightSearchContent();

  @override
  State<_FlightSearchContent> createState() => _FlightSearchContentState();
}

class _FlightSearchContentState extends State<_FlightSearchContent> {
  String _origin = '';
  String _destination = '';
  DateTime? _date;

  void _onSearch() {
    if (_origin.isEmpty || _destination.isEmpty || _date == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select Origin, Destination, and Date'),
        ),
      );
      return;
    }
    context.read<FlightSearchCubit>().searchFlights(
      origin: _origin,
      destination: _destination,
      date: _date!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocListener<FlightSearchCubit, FlightSearchState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (flights) {
              FlightResultsRoute($extra: flights).go(context);
            },
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Search Flights',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),

                LocationInputCard(
                  onOriginChanged: (val) => _origin = val,
                  onDestinationChanged: (val) => _destination = val,
                ),
                const SizedBox(height: 16),

                DateSelectorCard(
                  onDateChanged: (val) => _date = val,
                ),
                const Spacer(),
                BlocBuilder<FlightSearchCubit, FlightSearchState>(
                  builder: (context, state) {
                    final isLoading = state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                    return ElevatedButton(
                      onPressed: isLoading ? null : _onSearch,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Search Flights',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
