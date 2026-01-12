import 'storage_repository.dart';

class CloudStorage implements StorageRepository {

  final Map<String, String> _remoteDb = {};
  final String apiToken;

  CloudStorage({required this.apiToken});

  Future<void> _simulateNetwork() async {
    await Future.delayed(const Duration(milliseconds: 300));
  }

  void _checkAuth() {
    if(apiToken.isEmpty) {
      throw Exception("Unauthorized apiToken is empty");
    }
  }

  @override
  Future<void> clear() async {
    _checkAuth();
    await _simulateNetwork();
    _remoteDb.clear();
  }

  @override
  Future<void> delete(String key) async {
    _checkAuth();
    await _simulateNetwork();
    _remoteDb.remove(key);
  }

  @override
  Future<bool> exists(String key) async {
    _checkAuth();
    await _simulateNetwork();
    return _remoteDb.containsKey(key);
  }

  @override
  Future<String?> readString(String key) async {
    _checkAuth();
    await _simulateNetwork();
    return _remoteDb[key];
  }

  @override
  Future<void> saveString(String key, String value) async {
    _checkAuth();
    await _simulateNetwork();
    _remoteDb[key] = value;
  }

}