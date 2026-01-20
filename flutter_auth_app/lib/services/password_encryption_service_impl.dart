import 'package:flutter_auth_app/core/services/password_encryption_service.dart';

class PasswordEncryptionServiceImpl implements PasswordEncryptionService {
  @override
  String encryptPassword(String password) {
    return password.codeUnits
        .map((unit) => unit.toRadixString(16).padLeft(2, '0'))
        .join();
  }
}
