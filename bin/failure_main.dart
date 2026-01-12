import 'lib/failure/cloud/cloud_storage.dart';
import 'lib/failure/network_failure.dart';
import 'lib/failure/result.dart';


Future<void> main() async {

  final repo = CloudStorage(apiToken: "Token_1234");

  final r1 = await repo.saveString("username", "John");
  switch (r1) {
    case Success():
      print("Saved");
    case Error(:final failure):
       print("Save failed => $failure}");
  }


  final r2 = await repo.readString("username");

  switch(r2) {
    case Success(:final data):
      print("Read = $data");
    case Error(:final failure):
      if(failure is AuthFailure) {
        print("Login required: ${failure.message}");
      } else if(failure is NetworkFailure) {
        print("Check internet: ${failure.message}");
      } else {
        print("Other error");
      }
  }
}