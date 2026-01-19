import 'package:flutter_auth_app/l10n/l10n.dart';

/// Utility class containing common form validation functions
class FormValidators {
  FormValidators._();

  /// Validates that a field is not empty
  ///
  /// Returns null if valid, error message if invalid
  static String? validateRequired(
    String? value,
    String fieldName,
    AppLocalizations l10n,
  ) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  /// Validates phone number format
  ///
  /// Accepts international formats with optional + prefix
  /// Returns null if valid, error message if invalid
  static String? validatePhone(
    String? value,
    AppLocalizations l10n,
  ) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    // Remove spaces and validate format
    final cleanedValue = value.replaceAll(RegExp(r'\s'), '');

    // Basic phone validation - accepts 10-15 digits with optional + prefix
    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');

    if (!phoneRegex.hasMatch(cleanedValue)) {
      return 'Invalid phone number';
    }

    return null;
  }

  /// Validates email format
  ///
  /// Returns null if valid, error message if invalid
  static String? validateEmail(
    String? value,
    AppLocalizations l10n,
  ) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    // Email regex pattern
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Invalid email format';
    }

    return null;
  }

  /// Validates minimum length requirement
  ///
  /// Returns null if valid, error message if invalid
  static String? validateMinLength(
    String? value,
    int minLength,
    String fieldName,
    AppLocalizations l10n,
  ) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }

    if (value.length < minLength) {
      return '$fieldName must be at least $minLength characters long';
    }

    return null;
  }

  /// Validates maximum length requirement
  ///
  /// Returns null if valid, error message if invalid
  static String? validateMaxLength(
    String? value,
    int maxLength,
    String fieldName,
    AppLocalizations l10n,
  ) {
    if (value != null && value.length > maxLength) {
      return '$fieldName must be at most $maxLength characters long';
    }

    return null;
  }

  /// Combines multiple validators and returns the first error found
  ///
  /// Useful for applying multiple validation rules to a single field
  /// Returns null if all validators pass, first error message otherwise
  static String? combineValidators(
    List<String? Function()> validators,
  ) {
    for (final validator in validators) {
      final error = validator();
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}
