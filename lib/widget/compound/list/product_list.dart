import 'package:flutter/material.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/widget/compound/cards/product_card.dart';

typedef OnSelectProduct = Function(ProductDto productDto);

class ProductList extends StatelessWidget {
  final List<ProductDto> products;
  final OnSelectProduct? onSelectProduct;

  const ProductList({
    super.key,
    required this.products,
    this.onSelectProduct,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 16,
            );
          },
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: products[index],
              onTapClick: onSelectProduct,
            );
          },
        ));
  }
}
