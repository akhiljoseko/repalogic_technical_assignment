import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/form_validators.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    this.controller,
    super.key,
  });

  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: 'Password',
        helperText: '',
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
      ),
      validator: (value) => FormValidators.validateMinLength(
        value: value,
        minLength: 8,
        fieldName: 'Password',
        l10n: context.l10n,
      ),
      obscureText: _isObscured,
    );
  }
}
