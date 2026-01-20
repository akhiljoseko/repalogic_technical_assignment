import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/utils/form_validators.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/shared/widgets/primary_button.dart';

class AddUserBottomSheet extends StatefulWidget {
  const AddUserBottomSheet({super.key});

  @override
  State<AddUserBottomSheet> createState() => _AddUserBottomSheetState();
}

class _AddUserBottomSheetState extends State<AddUserBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Name',
          ),
          validator: (value) =>
              FormValidators.validateRequired(value, 'Full Name', context.l10n),
        ),
        PrimaryButton(
          buttonLabel: 'Add User',
          onPressed: () {},
        ),
      ],
    );
  }
}
