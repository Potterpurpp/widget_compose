import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wiget_compose/di/get_di.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/loading/loading_indicator.dart';
import 'package:wiget_compose/mocks/products.dart';
import 'package:wiget_compose/port/product.dart';
import 'package:wiget_compose/widget/compound/bottomNavbar/bottom_navbar.dart';
import 'package:wiget_compose/widget/compound/junbutton/home_jun_button.dart';
import 'package:wiget_compose/widget/compound/navbar/home_navbar.dart';
import 'package:wiget_compose/widget/compound/sections/catalog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IProductService service = getIt.get<IProductService>();
  int _selectedIndex = 0;

  List<List<ProductDto>> products = [];
  List<String> categories = [];

  bool isLoading = false;

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {
    setState(() {
      isLoading = true;
    });
    // Get category ทั้งหมด
    final categories = await service.getCategories();
    // Loop สร้าง Future list ในการเรียกดู product by category เอาไว้
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    // เอา Future list ทั้งหมดมารอ reponse พร้อมๆกัน
    // ข้อดี: ทุกเส้นถูกเรียกพร้อมกัน ใช้เวลาเท่าเส้นที่เรียกนานที่สุด
    // ข้อเสีย: Server รับ load มากขึ้น เพราะถูกเรียกพร้อมกันทีเดียวหลายเส้น ต้องมีการวางแผน scaling ที่ดี
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
      isLoading = false;
    });
  }

  void onSelectProduct(ProductDto productDto) {
    context.go('/detail', extra: productDto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const HomeNavbar(),
              Expanded(
                  child: !isLoading
                      ? ListView.builder(
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Column(
                              key: UniqueKey(),
                              children: [
                                HomeJunButton(
                                    imgUrl: categoryImages[categories[index]]!,
                                    title: categories[index].toUpperCase(),
                                    buttonTitle: 'ViewCollection'),
                                Catalog(
                                  title: 'All products',
                                  products: products[index],
                                  onSelectProduct: onSelectProduct,
                                ),
                                const SizedBox(
                                  height: 24,
                                )
                              ],
                            );
                          },
                        )
                      : const Center(
                          child: SizedBox(
                              width: 100, height: 100, child: Loading())))
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
          currentScreen: '/',
        ));
  }
}
