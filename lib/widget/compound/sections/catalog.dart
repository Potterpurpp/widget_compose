import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/widget/compound/list/product_list.dart';
import 'package:wiget_compose/widget/elements/texts/text_title.dart';

class Catalog extends StatelessWidget {
  final List<ProductDto> products;
  final String title;
  final OnSelectProduct onSelectProduct;

  const Catalog(
      {super.key,
      required this.products,
      required this.title,
      required this.onSelectProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: TextTitle(
            title: title,
          ),
        ),
        ProductList(products: products, onSelectProduct: onSelectProduct)
      ],
    );
  }
}
