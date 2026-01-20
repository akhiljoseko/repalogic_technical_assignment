/// An abstract contract defining basic local database operations.
///
/// Supports CRUD operations on generic data type [T].
/// Applications should depend on this to remain decoupled from
/// specific storage implementations.
abstract class LocalDatabase<T> {
  /// Inserts [value] into storage with the associated [key].
  Future<void> insert(String key, T value);

  /// Finds and returns the object associated with [key],
  /// or null if it does not exist.
  Future<T?> find(String key);

  /// Returns a list of all stored objects.
  Future<List<T>> findAll();

  /// Updates the stored value for the given [key].
  Future<void> update(String key, T value);

  /// Removes the stored value associated with the [key].
  Future<void> remove(String key);

  /// Clears all stored data.
  Future<void> clear();
}
