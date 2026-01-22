import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source.dart';
import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:uuid/uuid.dart';

/// Implementation of [UsersRepository] using a local data source.
///
/// This repository handles fetching and creating users, bridging the domain
/// layer with the data layer.
class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({required UsersLocalDataSource usersLocalDataSource})
    : _usersLocalDataSource = usersLocalDataSource;

  final UsersLocalDataSource _usersLocalDataSource;

  @override
  Future<Result<List<User>>> getUsers() async {
    try {
      // Fetch user models from local storage
      final userModels = await _usersLocalDataSource.getUsers();
      // Map models to domain entities
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

  @override
  Future<Result<User>> createUser({required String name}) async {
    try {
      // Generate a unique ID for the new user
      final user = User(
        id: const Uuid().v4(),
        name: name,
      );
      final userModel = UserModel.fromEntity(user);
      // Persist the user to local storage
      await _usersLocalDataSource.createUser(userModel);
      return Result.ok(user);
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'create-user-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
