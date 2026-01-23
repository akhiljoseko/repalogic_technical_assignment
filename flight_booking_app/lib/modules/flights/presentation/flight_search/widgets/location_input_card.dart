import 'package:flight_booking_app/modules/flights/data/datasources/hardcoded_airports.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flutter/material.dart';

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
  // We keep controllers to be able to swap text, but for Autocomplete,
  // we might need to manipulate the internal state or use a RawAutocomplete to access controller.
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destController = TextEditingController();

  // Helper to ensure we trigger updates
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

    // We also need to notify the parent about the change
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
                _buildAutocompleteField(
                  controller: _originController,
                  label: 'From',
                  icon: Icons.flight_takeoff,
                  onChanged: _updateOrigin,
                ),
                const Divider(),
                _buildAutocompleteField(
                  controller: _destController,
                  label: 'To',
                  icon: Icons.flight_land,
                  onChanged: _updateDest,
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
    return RawAutocomplete<Airport>(
      textEditingController: controller,
      focusNode: FocusNode(), // Create new focus node for each field
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<Airport>.empty();
        }
        return kHardcodedAirports.where((Airport option) {
          return option.city.toLowerCase().contains(
                textEditingValue.text.toLowerCase(),
              ) ||
              option.code.toLowerCase().contains(
                textEditingValue.text.toLowerCase(),
              ) ||
              option.name.toLowerCase().contains(
                textEditingValue.text.toLowerCase(),
              );
        });
      },
      displayStringForOption: (Airport option) =>
          '${option.city} (${option.code})',
      onSelected: (Airport selection) {
        onChanged(selection.code); // Pass the code as the selected value
      },
      fieldViewBuilder:
          (
            BuildContext context,
            TextEditingController fieldTextEditingController,
            FocusNode fieldFocusNode,
            VoidCallback onFieldSubmitted,
          ) {
            // We link our external controller to the one used by Autocomplete
            // effectively, but RawAutocomplete takes a controller.
            // Wait, if we pass `controller` to RawAutocomplete, it uses it.
            // So we don't need to do anything special here other than decorating the field.

            // Note: The `fieldTextEditingController` passed here IS the `controller` we passed
            // to `RawAutocomplete` if we provided one.

            // Make sure to listen to changes to update the parent string even if not selected from dropdown
            // e.g. typing manually

            return TextField(
              controller: fieldTextEditingController,
              focusNode: fieldFocusNode,
              onChanged: (val) => onChanged(val), // Update as user types
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
                  width: MediaQuery.of(context).size.width - 64, // Adjust width
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
  }
}
