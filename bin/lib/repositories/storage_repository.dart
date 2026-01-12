abstract class StorageRepository {
  void storeDate(String key, Object value);
  Object? readData(String key);
  void deleteDate(String key);
}