import 'package:wiget_compose/di/get_di.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/port/product.dart';

class ProductService extends IProductService {
  final IProductRepository repository = getIt.get<IProductRepository>();
  // ProductService(this.repository);

  @override
  Future<List<ProductDto>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts
        .map((product) => ProductDto(
            id: product.id.toString(),
            category: product.category!,
            name: product.title!,
            imgUrl: product.image!,
            price: product.price!.toDouble(),
            description: product.description!))
        .toList();
  }

  @override
  Future<List<String>> getCategories() async {
    return await repository.getCategories();
  }
}
