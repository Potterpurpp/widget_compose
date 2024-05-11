import 'package:get_it/get_it.dart';
import 'package:wiget_compose/network/http/dio_service.dart';
import 'package:wiget_compose/network/http/http.dart';
import 'package:wiget_compose/port/product.dart';
import 'package:wiget_compose/repositories/product_repositories.dart';
import 'package:wiget_compose/services/product_service.dart';

final getIt = GetIt.instance;

void registerService() {
  getIt.registerSingleton<HttpService>(DioService('https://fakestoreapi.com'));
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());
}
