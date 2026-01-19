import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/form_validators.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    this.controller,
    super.key,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(hintText: 'Password', helperText: ''),
      validator: (value) => FormValidators.validateMinLength(
        value: value,
        minLength: 8,
        fieldName: 'Password',
        l10n: context.l10n,
      ),
    );
  }
}
