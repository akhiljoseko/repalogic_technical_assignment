import 'dart:async';

import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/exceptions/auth_exceptions.dart';
import 'package:flutter_auth_app/core/services/password_encryption_service.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';

/// Implementation of [AuthenticationRepository] using a [StreamController]
/// to broadcast authentication state changes throughout the app.
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required this.localDataSource,
    required this.passwordEncryptionService,
  });

  final AuthLocalDataSource localDataSource;
  final PasswordEncryptionService passwordEncryptionService;

  /// Internal broadcast controller to notify listeners of auth state changes.
  final _controller = StreamController<User?>.broadcast();

  @override
  Stream<User?> get authStateChanges => _controller.stream;

  @override
  Future<Result<User>> createAccount({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      // 1. Check if a user with the same email already exists in the data source.
      final isUserExists = await localDataSource.isUserExists(email: email);
      if (isUserExists) {
        return Result.error(UserAlreadyExistsException());
      }

      // 2. Encrypt the raw password using the security service.
      final encryptedPassword = passwordEncryptionService.encryptPassword(
        password,
      );

      // 3. Create the account in the local data source and get the model back.
      final createdUserModel = await localDataSource.createAccount(
        email: email,
        encryptedPassword: encryptedPassword,
        name: name,
      );

      // 4. Transform the model to a domain entity and notify listeners of the new auth state.
      final user = createdUserModel.toEntity();
      _controller.add(user);

      return Result.ok(user);
    } on AppException catch (e) {
      // Re-throw documented application exceptions.
      return Result.error(e);
    } on Exception catch (e) {
      // Wrap any unexpected exceptions in an UnknownException for consistent error handling.
      return Result.error(
        UnknownException(
          errorCode: 'create-account-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<User>> loginWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      // 1. Fetch the user details from the local data source.
      final userModel = await localDataSource.getUser(email: email);
      if (userModel == null) {
        return Result.error(UserNotFoundException());
      }

      // 2. Encrypt the provided password for comparison with the stored hash/obfuscated string.
      final encryptedPassword = passwordEncryptionService.encryptPassword(
        password,
      );

      // 3. Validate credentials and notify listeners of the successful login.
      if (encryptedPassword == userModel.encryptedPassword) {
        final user = userModel.toEntity();
        _controller.add(user);
        return Result.ok(user);
      }

      // 4. If password doesn't match, return an explicit error.
      return Result.error(InvalidCredentialsException());
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'password-login-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<void> logout() async {
    // Notify listeners that the user is now null (unauthenticated).
    _controller.add(null);
  }

  @override
  void dispose() {
    // Ensure the stream controller is disposed when the repository is no longer needed.
    _controller.close();
  }
}
