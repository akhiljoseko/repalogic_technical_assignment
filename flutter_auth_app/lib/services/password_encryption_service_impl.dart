import 'package:flutter_auth_app/core/services/password_encryption_service.dart';

/// Implementation of [PasswordEncryptionService] that performs a simple
/// hexadecimal conversion.
///
/// Note: This is an obfuscation method and should be replaced with a
/// robust hashing algorithm (like bcrypt) for production use.
class PasswordEncryptionServiceImpl implements PasswordEncryptionService {
  @override
  String encryptPassword(String password) {
    // Converts each character to its 2-digit hexadecimal representation.
    return password.codeUnits
        .map((unit) => unit.toRadixString(16).padLeft(2, '0'))
        .join();
  }
}
