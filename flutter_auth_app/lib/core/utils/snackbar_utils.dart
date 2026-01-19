import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';

abstract class SnackbarUtils {
  static void showSuccessSnackBar(
    BuildContext context, {
    String title = 'Success',
    String? content,
  }) {
    const bgColor = Colors.green;
    const textColor = Colors.white;
    final snackBar = SnackBar(
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      behavior: SnackBarBehavior.floating,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          if (content?.isNotEmpty ?? false)
            Text(
              content!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: textColor,
              ),
            ),
        ],
      ),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showErrorSnackBar(
    BuildContext context, {
    String title = 'Error',
    String? content,
  }) {
    final snackBar = SnackBar(
      backgroundColor: context.colorScheme.errorContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      behavior: SnackBarBehavior.floating,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: context.colorScheme.onErrorContainer,
            ),
          ),
          if (content?.isNotEmpty ?? false)
            Text(
              content!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onErrorContainer,
              ),
            ),
        ],
      ),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showInfoSnackBar(
    BuildContext context, {
    required String content,
  }) {
    final snackBar = SnackBar(
      backgroundColor: context.colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      behavior: SnackBarBehavior.floating,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
