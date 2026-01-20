import 'package:flutter_auth_app/core/services/local_database.dart';
import 'package:hive_ce/hive.dart';

/// A [LocalDatabase] implementation backed by Hive's regular [Box].
///
/// This implementation keeps all values loaded in memory once
/// opened, enabling very fast synchronous access at the cost
/// of increased memory usage.
///
/// Use this when your dataset is small enough to comfortably fit
/// in device memory, and read performance is critical.
class HiveBoxLocalDatabase<T> implements LocalDatabase<T> {
  /// Constructs a HiveBoxDatabase using the given [boxName].
  HiveBoxLocalDatabase(this.boxName);

  /// The name of the Hive box this database manages.
  final String boxName;

  Box<T>? _box;

  /// Opens and returns the Hive box instance, reusing if already open.
  Future<Box<T>> get box async {
    if (_box == null || !_box!.isOpen) {
      _box = await Hive.openBox<T>(boxName);
    }
    return _box!;
  }

  @override
  Future<void> insert(String key, T value) async {
    final b = await box;
    await b.put(key, value);
  }

  @override
  Future<T?> find(String key) async {
    final b = await box;
    return b.get(key);
  }

  @override
  Future<List<T>> findAll() async {
    final b = await box;
    return b.values.toList();
  }

  @override
  Future<void> update(String key, T value) async {
    final b = await box;
    await b.put(key, value);
  }

  @override
  Future<void> remove(String key) async {
    final b = await box;
    await b.delete(key);
  }

  @override
  Future<void> clear() async {
    final b = await box;
    await b.clear();
  }
}
