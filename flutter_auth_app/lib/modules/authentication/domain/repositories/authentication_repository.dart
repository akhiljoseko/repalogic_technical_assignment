import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';

abstract interface class AuthenticationRepository {
  Stream<User?> get authStateChanges;

  Future<Result<User>> createAccount({
    required String email,
    required String password,
    required String name,
  });

  Future<Result<User>> loginWithPassword({
    required String email,
    required String password,
  });

  Future<void> logout();

  void dispose();
}
