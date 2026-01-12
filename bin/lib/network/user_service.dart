import 'network_repo.dart';


class UserService {
  final NetworkRepo network;
  
  UserService({required this.network});
  
  Future<void> loadUser() async {
    final response = await network.get("https://online.pdp.uz");
    print("User data: $response");
  }

  Future<void> createUser() async {
    final response = await network.post(
        "https://online.pdp.uz",
        "{name: Ogabek}",
    );
    print("Create user response: $response");
  }
}