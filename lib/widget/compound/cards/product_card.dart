import 'package:flutter/material.dart';
import 'package:wiget_compose/entities/product_dto.dart';

import 'package:wiget_compose/widget/elements/texts/price_text.dart';
import 'package:wiget_compose/widget/elements/texts/small_text.dart';

typedef ProductCardTap = Function(ProductDto productDto);
class ProductCard extends StatelessWidget {
  final ProductDto product;
  final double width = 200;
  final double height = 240;
  final Function(ProductDto productDto)? onTapClick;

  const ProductCard({
    super.key,
    required this.product,
    this.onTapClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onTapClick!= null){
          onTapClick!(product);
        }
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Image.network(
              product.imgUrl,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const Spacer(),
                Container(
                  color: const Color(0x88000000),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: SmallText(
                              title: product.name,
                              color: Colors.white,
                            )),
                        PriceText(price: '${product.price}\$'),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );


  }
}
