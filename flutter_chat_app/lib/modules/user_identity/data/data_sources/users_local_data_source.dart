import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';

abstract interface class UsersLocalDataSource {
  Future<List<UserModel>> getUsers();

  Future<void> createUser(UserModel userModel);
}
