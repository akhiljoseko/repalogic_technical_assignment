import 'package:flutter_chat_app/core/services/local_database.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source.dart';
import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';

class UsersLocalDataSourceImpl implements UsersLocalDataSource {
  UsersLocalDataSourceImpl({required LocalDatabase<UserModel> usersDatabase})
    : _usersDatabase = usersDatabase;

  final LocalDatabase<UserModel> _usersDatabase;
  @override
  Future<List<UserModel>> getUsers() async {
    return _usersDatabase.findAll();
  }
}
