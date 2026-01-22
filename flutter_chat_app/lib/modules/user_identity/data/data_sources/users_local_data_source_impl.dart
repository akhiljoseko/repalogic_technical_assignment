import 'package:flutter_chat_app/core/services/local_database.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source.dart';
import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';

/// Implementation of [UsersLocalDataSource] using [LocalDatabase].
///
/// This class directly interacts with the underlying database service (e.g., Hive)
/// to perform CRUD operations on [UserModel] objects.
class UsersLocalDataSourceImpl implements UsersLocalDataSource {
  UsersLocalDataSourceImpl({required LocalDatabase<UserModel> usersDatabase})
    : _usersDatabase = usersDatabase;

  final LocalDatabase<UserModel> _usersDatabase;
  @override
  Future<List<UserModel>> getUsers() async {
    // Retrieve all users from the database.
    return _usersDatabase.findAll();
  }

  @override
  Future<void> createUser(UserModel userModel) {
    // Insert the user into the database using their ID as the key.
    return _usersDatabase.insert(userModel.id, userModel);
  }
}
