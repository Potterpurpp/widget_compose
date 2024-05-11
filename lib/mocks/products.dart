import 'package:wiget_compose/entities/product_dto.dart';

final List<ProductDto> products = [
  ProductDto(
      id: 'prod-01',
      category: 'cloth',
      imgUrl:
          'https://images.unsplash.com/photo-1575891942688-395c4fd38fb8?q=80&w=2990&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Nike Air Force 1',
      price: 399,
      description: ''),
  ProductDto(
      id: 'prod-02',
      category: 'cloth',
      imgUrl:
          'https://images.unsplash.com/photo-1652551272337-09e1d6cf634f?q=80&w=2224&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Cool Cat T-Shirt',
      price: 199,
      description: ''),
  ProductDto(
      id: 'prod-03',
      category: 'cloth',
      imgUrl:
          'https://images.unsplash.com/photo-1617019114583-affb34d1b3cd?q=80&w=3774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Nice Dress',
      price: 299,
      description: ''),
];
final List<ProductDto> cars = [
  ProductDto(
      id: 'car-01',
      category: 'car',
      imgUrl:
          'https://images.unsplash.com/photo-1502877338535-766e1452684a?q=80&w=3872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'BMW M4',
      price: 69900,
      description: ''),
  ProductDto(
      id: 'car-02',
      category: 'car',
      imgUrl:
          'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Ford Mustang',
      price: 39990,
      description: ''),
  ProductDto(
      id: 'car-03',
      category: 'car',
      imgUrl:
          'https://images.unsplash.com/photo-1493238792000-8113da705763?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Audi R8',
      price: 129900,
      description: ''),
];

final Map<String, String> categoryImages = {
  "electronics":
      'https://images.unsplash.com/photo-1544006658-89bde88e87c6?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "jewelery":
      'https://plus.unsplash.com/premium_photo-1661645473770-90d750452fa0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "men's clothing":
      'https://images.unsplash.com/photo-1507680434567-5739c80be1ac?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  "women's clothing":
      'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?q=80&w=2448&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
};
