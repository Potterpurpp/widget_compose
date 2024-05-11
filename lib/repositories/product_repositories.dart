import 'package:wiget_compose/di/get_di.dart';
import 'package:wiget_compose/models/product.dart';
import 'package:wiget_compose/network/http/http.dart';
import 'package:wiget_compose/port/product.dart';

class ProductRepository implements IProductRepository {
  final HttpService httpService = getIt.get<HttpService>();

  // ProductRepository(this.httpService);

  @override
  Future<List<ProductModel>> getByCategory(String category) async {
    final response = await httpService.get('/products/category/$category');
    List<ProductModel> products = [];
    for (dynamic res in response) {
      products.add(ProductModel.fromJson(res));
    }
    return products;
  }

  @override
  Future<List<String>> getCategories() async {
    final response = await httpService.get("/products/categories");
    //Method 1
    // List<String> categoies = [];
    // for (dynamic res in response) {
    //   categoies.add(res);
    // }
    // return categoies;

    //Method 2 advanced
    return (response as List<dynamic>).map((e) => e.toString()).toList();
  }
}
