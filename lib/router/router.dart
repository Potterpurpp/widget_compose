import 'package:go_router/go_router.dart';
import 'package:wiget_compose/entities/product_dto.dart';
import 'package:wiget_compose/screen/home_screen.dart';
import 'package:wiget_compose/screen/product_detail_screen.dart';
import 'package:wiget_compose/screen/user_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) {
              final product = state.extra as ProductDto;
              return ProductDetailScreen(
                productDto: product,
              );
            },
          ),
          GoRoute(
            path: 'profile',
            builder: (context, state) {
              return const UserScreen();
            },
          )
        ])
  ],
);
