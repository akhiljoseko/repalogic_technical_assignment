import 'package:flutter_auth_app/modules/authentication/data/models/user_model.dart';

abstract interface class AuthLocalDataSource {
  Future<bool> isUserExists({required String email});

  Future<UserModel> createAccount({
    required String email,
    required String encryptedPassword,
    required String name,
  });

  Future<UserModel?> getUser({required String email});
}
