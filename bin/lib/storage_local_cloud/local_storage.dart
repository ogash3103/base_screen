import 'storage_repository.dart';

class LocalStorage implements StorageRepository {

  final Map<String, String> _db = {};

  @override
  Future<void> saveString(String key, String value) async {
    _db[key] = value;
  }

  @override
  Future<String?> readString(String key) async {
    return _db[key];
  }

  @override
  Future<void> delete(String key) async {
    _db.remove(key);
  }

  @override
  Future<bool> exists(String key) async {
    return _db.containsKey(key);
  }

  @override
  Future<void> clear() async {
    _db.clear();
  }









}