class ProductDto {
  String id;
  String category;
  String name;
  String description;
  String imgUrl;
  double price;

  ProductDto(
      {required this.id,
      required this.category,
      required this.description,
      required this.imgUrl,
      required this.name,
      required this.price});
}
