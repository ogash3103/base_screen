import '../result.dart';
import '../storage_repo.dart';
import '../network_failure.dart';

class CloudStorage implements StorageRepository {
  final Map<String, String> _remoteDb = {};
  final String apiToken;

  CloudStorage({required this.apiToken});

  Future<void> _simulateNetwork() async {
    await Future.delayed(const Duration(milliseconds: 250));
  }

  @override
  Future<Result<String?>> readString(String key) async {
    try {
      if(apiToken.isEmpty) {
        return Error(AuthFailure("Token yo'q. Login qiling"));
      }
      await _simulateNetwork();
      return Success(_remoteDb[key]);
    } catch (e, st) {
      return Error(NetworkFailure("Cloud o'qishda network xato", cause: e, stackTrace: st));
    }
  }

  @override
  Future<Result<void>> saveString(String key, String value) async {
    try {
      if(apiToken.isEmpty) {
        return Error( AuthFailure("Token yo'q, Login qiling"));
      }
      await _simulateNetwork();
      _remoteDb[key] = value;
      return const Success(null);
    }
     catch (e, st) {
      return Error(NetworkFailure("Internet yoki sever muammosi", cause: e, stackTrace: st));
     }
  }
}