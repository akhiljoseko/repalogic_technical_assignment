import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';

/// Base class for all form validation exceptions
sealed class FormValidationException extends AppException {
  FormValidationException({
    required super.errorMessage,
    super.errorCode = 'form_validation',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'Form validation error';
  }
}

/// Exception thrown when a required field is empty.
final class RequiredFieldException extends FormValidationException {
  RequiredFieldException({
    required this.fieldName,
    super.errorCode = 'required_field',
    super.errorMessage = 'Field is required',
  });

  /// The name of the field that is missing (e.g., 'Email', 'Password').
  final String fieldName;

  @override
  String localize(AppLocalizations l10n) {
    return '$fieldName is required';
  }
}

/// Exception thrown when the provided email string does not match a valid email format.
final class InvalidEmailException extends FormValidationException {
  InvalidEmailException({
    super.errorCode = 'invalid_email',
    super.errorMessage = 'Email is invalid',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'Invalid email format';
  }
}

/// Exception thrown when a field's input is shorter than the required [minLength].
final class MinLengthException extends FormValidationException {
  MinLengthException({
    required this.fieldName,
    required this.minLength,
    super.errorCode = 'min_length',
    super.errorMessage = 'Input is too short',
  });

  /// The name of the field.
  final String fieldName;

  /// The minimum required length for this field.
  final int minLength;

  @override
  String localize(AppLocalizations l10n) {
    return '$fieldName must be at least $minLength characters long';
  }
}

/// Exception thrown when the input format is invalid for a specific [fieldName].
final class InvalidFormatException extends FormValidationException {
  InvalidFormatException({
    required this.fieldName,
    super.errorCode = 'invalid_format',
    super.errorMessage = 'Format is invalid',
  });

  /// The name of the field.
  final String fieldName;

  @override
  String localize(AppLocalizations l10n) {
    return '$fieldName is invalid';
  }
}
