abstract class NetworkRepo {

  Future<String> get(String url);
  Future<String> post(String url, String body);
}