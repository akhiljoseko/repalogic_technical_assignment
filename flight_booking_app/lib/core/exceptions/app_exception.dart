import 'package:flight_booking_app/l10n/gen/app_localizations.dart';

/// Base class for all application-specific exceptions.
///
/// Encapsulates an error code for programmatic handling and a message
/// for debugging. Subclasses must implement [localize] to provide
/// user-friendly error messages.
abstract class AppException implements Exception {
  AppException({
    required this.errorCode,
    required this.errorMessage,
  });

  /// A unique string identifier for the error type.
  final String errorCode;

  /// A non-localized message describing the error (primarily for logging).
  final String errorMessage;

  /// Returns a localized, user-facing error message.
  String localize(AppLocalizations l10n);

  @override
  String toString() {
    return 'Error code: $errorCode \n error message: $errorMessage';
  }
}

/// Represents an unexpected or unhandled error within the application.
final class UnknownException extends AppException {
  UnknownException({
    super.errorCode = 'unknown',
    super.errorMessage = 'An unknown error',
  });

  @override
  String localize(AppLocalizations l10n) {
    return l10n.errUnknown;
  }
}
