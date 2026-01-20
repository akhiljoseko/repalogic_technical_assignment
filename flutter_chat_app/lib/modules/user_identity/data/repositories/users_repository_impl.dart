import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({required UsersLocalDataSource usersLocalDataSource})
    : _usersLocalDataSource = usersLocalDataSource;

  final UsersLocalDataSource _usersLocalDataSource;

  @override
  Future<Result<List<User>>> getUsers() async {
    try {
      final userModels = await _usersLocalDataSource.getUsers();
      final users = List<User>.from(userModels.map((e) => e.toEntity()));
      return Result.ok(users);
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'fetch-users-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
