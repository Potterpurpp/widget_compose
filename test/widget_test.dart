// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:wiget_compose/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wiget_compose/mocks/mock_http_service.dart';
import 'package:wiget_compose/network/http/http.dart';
import 'package:wiget_compose/port/product.dart';
import 'package:wiget_compose/repositories/product_repositories.dart';
import 'package:wiget_compose/services/product_service.dart';

void main() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<HttpService>(MockHttpService('mock'));
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());
  test('Get product return products', () async {
    final mockHttpService = getIt.get<HttpService>();
    (mockHttpService as MockHttpService).returnData = [
      {
        "id": 9,
        "title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
        "price": 64,
        "description":
            "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
        "category": "cars",
        "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      }
    ];
    final productService = getIt.get<IProductService>();
    final products = await productService.getByCategory('cars');

    expect(products, isNotEmpty);
    expect(products[0].category, 'cars');
  });
  test('Get All categories gets categoies', () async {
    final mockHttpService = getIt.get<HttpService>();
    (mockHttpService as MockHttpService).returnData = [
      'Hello',
      "Jew",
      "new clothes",
      "women"
    ];
    final productService = getIt.get<IProductService>();
    final categories = await productService.getCategories();

    expect(categories, isNotEmpty);
    expect(categories[0], 'Hello');
  });
}
