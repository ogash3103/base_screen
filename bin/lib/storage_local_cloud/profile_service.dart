import 'storage_repository.dart';

class ProfileService {
  final StorageRepository storage;

  ProfileService({required this.storage});

  Future<void> saveUsername(String username) async {
    if(username.trim().isEmpty) {
      throw ArgumentError("username bo'sh bo'lishi mumkin emas!!!");
    }
     await storage.saveString("username", username.trim());
  }

  Future<String> loadUsername() async {
    final value = await storage.readString("username");
    return value ?? "Guest";
  }

  Future<void> logout() async {
    await storage.delete("username");
  }

}