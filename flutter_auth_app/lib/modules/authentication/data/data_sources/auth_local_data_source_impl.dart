import 'package:flutter_auth_app/core/services/local_database.dart';
import 'package:flutter_auth_app/modules/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:flutter_auth_app/modules/authentication/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl({required this.localDatabase});

  final LocalDatabase<UserModel> localDatabase;

  @override
  Future<UserModel> createAccount({
    required String email,
    required String encryptedPassword,
    required String name,
  }) async {
    final userModel = UserModel(
      id: const Uuid().v4(),
      name: name,
      email: email,
      encryptedPassword: encryptedPassword,
    );

    await localDatabase.insert(userModel.email, userModel);
    return userModel;
  }

  @override
  Future<bool> isUserExists({required String email}) async {
    final user = await localDatabase.find(email);
    return user != null;
  }

  @override
  Future<UserModel?> getUser({required String email}) {
    return localDatabase.find(email);
  }
}
