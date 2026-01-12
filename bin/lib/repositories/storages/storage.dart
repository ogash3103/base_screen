import '../storage_repository.dart';


class Storage implements StorageRepository {

  final Map<String, Object> _database = {};

  @override
  void storeDate(String key, Object value) {
    _database[key] = value;
  }

  @override
  Object? readData(String key) {
    return _database[key];
  }

  @override
  void deleteDate(String key) {
    _database.remove(key);
  }

  Map<String, Object> dump() => Map.unmodifiable(_database);



}
