class Product {
  final String id;
  final String title;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    this.isFavorite = false,
  });
}
