import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<Result<User>> loginWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = User(id: '1', name: 'John Doe', email: email);
      return Result.ok(user);
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
}
