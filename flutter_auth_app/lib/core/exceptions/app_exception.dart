import 'package:flutter_auth_app/l10n/gen/app_localizations.dart';

abstract class AppException implements Exception {
  AppException({
    required this.errorCode,
    required this.errorMessage,
  });

  final String errorCode;
  final String errorMessage;

  String localize(AppLocalizations l10n);

  @override
  String toString() {
    return 'Error code: $errorCode \n error message: $errorMessage';
  }
}

final class UnknownException extends AppException {
  UnknownException({
    super.errorCode = 'unknown',
    super.errorMessage = 'An unknown error',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'An unknown error';
  }
}
