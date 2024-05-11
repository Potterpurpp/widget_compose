import 'package:wiget_compose/network/http/http.dart';
import 'package:dio/dio.dart';

class DioService extends HttpService {
  late Dio dio;

  DioService(super.url) {
    dio = Dio();
  }

  @override
  Future delete(String path) {
    throw UnimplementedError();
  }

  @override
  Future get(String path) async {
    final response = await dio.get('$url$path');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  @override
  Future post(String path) {
    throw UnimplementedError();
  }

  @override
  Future put(String path) {
    throw UnimplementedError();
  }

  @override
  Future patch(String path) {
    throw UnimplementedError();
  }
}
