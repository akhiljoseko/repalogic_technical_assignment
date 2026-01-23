import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:flight_booking_app/modules/flights/presentation/bloc/airport_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationInputCard extends StatefulWidget {
  const LocationInputCard({
    required this.onOriginChanged,
    required this.onDestinationChanged,
    super.key,
  });

  final ValueChanged<String> onOriginChanged;
  final ValueChanged<String> onDestinationChanged;

  @override
  State<LocationInputCard> createState() => _LocationInputCardState();
}

class _LocationInputCardState extends State<LocationInputCard> {
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destController = TextEditingController();

  void _updateOrigin(String value) {
    widget.onOriginChanged(value);
  }

  void _updateDest(String value) {
    widget.onDestinationChanged(value);
  }

  @override
  void dispose() {
    _originController.dispose();
    _destController.dispose();
    super.dispose();
  }

  void _swapLocations() {
    final temp = _originController.text;
    _originController.text = _destController.text;
    _destController.text = temp;

    _updateOrigin(_originController.text);
    _updateDest(_destController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Column(
              children: [
                BlocProvider(
                  create: (context) => AirportSearchCubit(
                    context.read<FlightRepository>(),
                  ),
                  child: _buildAutocompleteField(
                    controller: _originController,
                    label: 'From',
                    icon: Icons.flight_takeoff,
                    onChanged: _updateOrigin,
                  ),
                ),
                const Divider(),
                BlocProvider(
                  create: (context) => AirportSearchCubit(
                    context.read<FlightRepository>(),
                  ),
                  child: _buildAutocompleteField(
                    controller: _destController,
                    label: 'To',
                    icon: Icons.flight_land,
                    onChanged: _updateDest,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 24,
              child: FloatingActionButton.small(
                onPressed: _swapLocations,
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child: const Icon(Icons.swap_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAutocompleteField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required ValueChanged<String> onChanged,
  }) {
    return BlocBuilder<AirportSearchCubit, AirportSearchState>(
      builder: (context, state) {
        final airports = state.maybeWhen(
          loaded: (airports) => airports,
          orElse: () => <Airport>[],
        );

        return RawAutocomplete<Airport>(
          textEditingController: controller,
          focusNode: FocusNode(),
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              context.read<AirportSearchCubit>().clear();
              return const Iterable<Airport>.empty();
            }

            // Trigger search through cubit
            context.read<AirportSearchCubit>().searchAirports(
              textEditingValue.text,
            );

            return airports;
          },
          displayStringForOption: (Airport option) =>
              '${option.city} (${option.code})',
          onSelected: (Airport selection) {
            onChanged(selection.code);
          },
          fieldViewBuilder:
              (
                BuildContext context,
                TextEditingController fieldTextEditingController,
                FocusNode fieldFocusNode,
                VoidCallback onFieldSubmitted,
              ) {
                return TextField(
                  controller: fieldTextEditingController,
                  focusNode: fieldFocusNode,
                  onChanged: (val) => onChanged(val),
                  decoration: InputDecoration(
                    prefixIcon: Icon(icon, color: Colors.grey),
                    labelText: label,
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                );
              },
          optionsViewBuilder:
              (
                BuildContext context,
                AutocompleteOnSelected<Airport> onSelected,
                Iterable<Airport> options,
              ) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 64,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: options.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Airport option = options.elementAt(index);
                          return ListTile(
                            title: Text('${option.city} (${option.code})'),
                            subtitle: Text(option.name),
                            onTap: () {
                              onSelected(option);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
        );
      },
    );
  }
}
