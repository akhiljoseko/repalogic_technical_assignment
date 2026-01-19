import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/form_validators.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    this.controller,
    super.key,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Email',
        helperText: '',
      ),
      validator: (value) => FormValidators.validateEmail(value, context.l10n),
    );
  }
}
