import 'package:flutter/material.dart';
import 'package:flight_booking_app/l10n/gen/app_localizations.dart';

class PassengerForm extends StatelessWidget {
  const PassengerForm({
    required this.passengerCount,
    required this.nameControllers,
    required this.passportControllers,
    required this.onPassengerCountChanged,
    super.key,
  });

  final int passengerCount;
  final List<TextEditingController> nameControllers;
  final List<TextEditingController> passportControllers;
  final ValueChanged<int?> onPassengerCountChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.lblPassengers,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            DropdownButton<int>(
              value: passengerCount,
              items: List.generate(5, (index) => index + 1)
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(l10n.lblAdults(e)),
                    ),
                  )
                  .toList(),
              onChanged: onPassengerCountChanged,
            ),
          ],
        ),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: passengerCount,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.lblPassengerN(index + 1),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: nameControllers[index],
                      decoration: InputDecoration(
                        labelText: l10n.lblName,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: passportControllers[index],
                      decoration: InputDecoration(
                        labelText: l10n.lblPassportNumber,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
