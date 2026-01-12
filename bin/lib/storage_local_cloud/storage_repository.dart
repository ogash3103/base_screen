abstract class StorageRepository {

  Future<void> saveString(String key, String value);
  Future<String?> readString(String key);

  Future<void> delete(String key);
  Future<bool> exists(String key);

  Future<void> clear();

}