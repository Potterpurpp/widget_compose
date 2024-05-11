import 'package:wiget_compose/network/http/http.dart';

class MockHttpService extends HttpService {
  dynamic returnData;
  MockHttpService(super.url);

  @override
  Future delete(Object path) async {
    return returnData;
  }

  @override
  Future get(String path) async {
    return returnData;
  }

  @override
  Future post(String path) async {
    return returnData;
  }

  @override
  Future put(String path) async {
    return returnData;
  }

  @override
  Future patch(String path) async {
    return returnData;
  }
}
