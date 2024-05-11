abstract class HttpService {
  final String url;
  HttpService(this.url);

  Future<dynamic> get(String path);
  Future<dynamic> post(String path);
  Future<dynamic> put(String path);
  Future<dynamic> patch(String path);
  Future<dynamic> delete(String path);
}
