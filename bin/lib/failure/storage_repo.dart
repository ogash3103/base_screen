import 'result.dart';

abstract class StorageRepository {
  Future<Result<void>> saveString(String key, String value);
  Future<Result<String?>> readString(String key);
}