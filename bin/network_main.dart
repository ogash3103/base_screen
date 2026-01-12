import 'lib/network/network_implementation.dart';
import 'lib/network/user_service.dart';

Future<void> main() async {
  final networkRepo = NetworkImplementation();
  final userService = UserService(network: networkRepo);

  await userService.loadUser();
  await userService.createUser();
}