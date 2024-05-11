import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/models/product.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getByCategory(String category);
  Future<List<String>> getCategories();
}

abstract class IProductService {
  Future<List<ProductDto>> getByCategory(String category);
  Future<List<String>> getCategories();
}
