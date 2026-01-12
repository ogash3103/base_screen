import '../result.dart';
import '../storage_repo.dart';
import '../network_failure.dart';
class LocalStorage implements StorageRepository {

  final Map<String, String> _db = {};

  @override
  Future<Result<String?>> readString(String key) async {
    try {
      return Success(_db[key]);
    }catch (e, st) {
      return Error(CacheFailure("Local o'qishda xato", cause: e, stackTrace: st));
    }
  }

  @override
  Future<Result<void>> saveString(String key, String value) async {
    try {
      if(key.trim().isEmpty) {
        return Error(CacheFailure("EKy bo'sh bo'lishi mumkin emas..."));
      }
      _db[key] == value;
       return const Success(null);
    } catch (e, st) {
      return Error(CacheFailure("Local saqlashda xato", cause: e, stackTrace: st));
    }
  }

}