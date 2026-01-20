import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/utils/context_extensions.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({required this.buttonLabel, this.onPressed, super.key});

  final String buttonLabel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,
      ),
      child: Text(buttonLabel),
    );
  }
}
