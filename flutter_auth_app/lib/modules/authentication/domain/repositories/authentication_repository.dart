import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';

/// Repository interface for authentication-related operations.
///
/// Implementations should handle communication with the backend (or mock data)
/// and manage a reactive stream of the user's authentication state.
abstract interface class AuthenticationRepository {
  /// A stream of the current user's authentication state.
  ///
  /// Emits the current user when authenticated, or `null` when logged out.
  Stream<User?> get authStateChanges;

  /// Attempts to create a new user account with the given credentials.
  ///
  /// Returns a [Result] containing the [User] on success,
  /// or an [AppException] on failure.
  Future<Result<User>> createAccount({
    required String email,
    required String password,
    required String name,
  });

  /// Attempts to log in a user with their email and password.
  ///
  /// Returns a [Result] containing the [User] on success,
  /// or an [AppException] on failure.
  Future<Result<User>> loginWithPassword({
    required String email,
    required String password,
  });

  Future<void> logout();

  void dispose();
}
