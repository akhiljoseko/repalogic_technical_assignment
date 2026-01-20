/// Service interface for encrypting passwords.
///
/// Implementations of this service define the algorithm used to secure
/// passwords before storage or transmission.
abstract interface class PasswordEncryptionService {
  /// Encrypts the provided [password] string.
  ///
  /// The resulting string is a secure (or obfuscated, depending on implementation)
  /// representation of the original password.
  String encryptPassword(String password);
}
