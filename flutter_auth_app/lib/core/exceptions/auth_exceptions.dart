import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/l10n/gen/app_localizations.dart';

/// Thrown during registration if the provided email is already in use.
class UserAlreadyExistsException extends AppException {
  UserAlreadyExistsException({
    super.errorCode = 'user_already_exists',
    super.errorMessage = 'User already exists',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'User already exists';
  }
}

/// Thrown during login if the password does not match the stored value.
class InvalidCredentialsException extends AppException {
  InvalidCredentialsException({
    super.errorCode = 'invalid_credentials',
    super.errorMessage = 'Invalid credentials',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'Invalid credentials';
  }
}

/// Thrown during login if no user is found with the provided email.
class UserNotFoundException extends AppException {
  UserNotFoundException({
    super.errorCode = 'user_not_found',
    super.errorMessage = 'User not found',
  });

  @override
  String localize(AppLocalizations l10n) {
    return 'User not found';
  }
}
