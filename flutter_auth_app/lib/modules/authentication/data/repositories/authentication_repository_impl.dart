import 'dart:async';

import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/exceptions/auth_exceptions.dart';
import 'package:flutter_auth_app/core/services/password_encryption_service.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required this.localDataSource,
    required this.passwordEncryptionService,
  });

  final AuthLocalDataSource localDataSource;
  final PasswordEncryptionService passwordEncryptionService;

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
      final isUserExists = await localDataSource.isUserExists(email: email);
      if (isUserExists) {
        return Result.error(UserAlreadyExistsException());
      }

      final encryptedPassword = passwordEncryptionService.encryptPassword(
        password,
      );
      final createdUserModel = await localDataSource.createAccount(
        email: email,
        encryptedPassword: encryptedPassword,
        name: name,
      );
      final user = createdUserModel.toEntity();
      _controller.add(user);
      return Result.ok(user);
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
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
      final userModel = await localDataSource.getUser(email: email);
      if (userModel == null) {
        return Result.error(UserNotFoundException());
      }
      final encryptedPassword = passwordEncryptionService.encryptPassword(
        password,
      );
      if (encryptedPassword == userModel.encryptedPassword) {
        final user = userModel.toEntity();
        _controller.add(user);
        return Result.ok(user);
      }
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
    _controller.add(null);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
