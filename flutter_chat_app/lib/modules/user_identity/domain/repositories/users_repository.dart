import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';

abstract interface class UsersRepository {
  Future<Result<List<User>>> getUsers();

  Future<Result<User>> createUser({required String name});
}
