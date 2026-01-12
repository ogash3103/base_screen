import 'lib/storage_local_cloud/local_storage.dart';
import 'lib/storage_local_cloud/profile_service.dart';
import 'lib/storage_local_cloud/cloud_storage.dart';

Future<void> main() async {

  // case 1 Local version
  final localRepo = LocalStorage();
  final localService = ProfileService(storage: localRepo);

  await localService.saveUsername("John");
  print("Local username: ${await localService.loadUsername()}");

  print('===========');

  // case 2 Cloud version
  final cloudRepo = CloudStorage(apiToken: "TOKEN_1234");
  final cloudService = ProfileService(storage: cloudRepo);

  await cloudService.saveUsername("Cloud_John");
  print("Cloud username: ${await cloudService.loadUsername()}");

  print('=========');

  // case 3 logout test

  await cloudService.logout();
  print("Cloud after logout: ${await cloudService.loadUsername()}");

}