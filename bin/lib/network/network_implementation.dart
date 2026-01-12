import 'network_repo.dart';

class NetworkImplementation implements NetworkRepo {


  @override
  Future<String> get(String url) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return "GET response from $url";
  }

  @override
  Future<String> post(String url, String body) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return "POST response from $url with body: $body";
  }

}