import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';

class QuestionTextButton extends StatelessWidget {
  const QuestionTextButton({
    required this.question,
    required this.buttonLabel,
    required this.onPressed,
    super.key,
  });

  final String question;
  final String buttonLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: question,
          style: context.textTheme.bodyMedium,
          children: [
            TextSpan(
              text: buttonLabel,
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: .bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
