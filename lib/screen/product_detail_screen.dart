import 'package:flutter/material.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/widget/compound/bottomNavbar/bottom_navbar.dart';
import 'package:wiget_compose/widget/elements/button/primary_button.dart';
import 'package:wiget_compose/widget/elements/texts/big_text.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductDto productDto;

  const ProductDetailScreen({super.key, required this.productDto});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                // 'https://inwfile.com/s-g/gbgyxj.jpg',
                widget.productDto.imgUrl,
                fit: BoxFit.fill,
                height: 300,
              ),
            ),
            const SizedBox(height: 16),
            BigText(
              color: Color.fromRGBO(121, 121, 76, 1),
              title: widget.productDto.name,
            ),
            const SizedBox(height: 8),
            Text(
              widget.productDto.description,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  'Price: ',
                  style: TextStyle(
                    fontFamily: 'BriemHand',
                    fontSize: 25,
                  ),
                ),
                Text(
                  '\$${widget.productDto.price.toString()}',
                  style: const TextStyle(
                    fontFamily: 'BriemHand',
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const PrimaryButton(
              title: "Buy now",
              titleColor: Colors.amber,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentScreen: '/detail',
      ),
    );
  }
}
