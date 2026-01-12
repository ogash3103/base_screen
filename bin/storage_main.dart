import 'lib/repositories/storage_repository.dart';
import 'lib/repositories/storages/storage.dart';

void main() {

  StorageRepository storage = Storage();

  // 1) STORE: data saqlash
  storage.storeDate('name', 'Ogabek');
  storage.storeDate('age', 21);
  storage.storeDate('isStudent', true);
  storage.storeDate('address', "Samarkand");

  print('--- AFTER STORE ---');
  print('name: ${storage.readData('name')}');
  print('age: ${storage.readData('age')}');
  print('isStudent: ${storage.readData('isStudent')}');


  print('\n--- READ NOT FOUND KEY ---');
  print('city: ${storage.readData('city')}');


  storage.deleteDate('age');

  print('\n--- AFTER DELETE age ---');
  print('age: ${storage.readData('age')}');
  print('name: ${storage.readData('name')}');


  if (storage is Storage) {
    print('\n--- DATABASE DUMP ---');
    print(storage.dump());
  }
}
