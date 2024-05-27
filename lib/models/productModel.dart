class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});
}

class SubCategory {
  final String id;
  final String name;

  SubCategory({required this.id, required this.name});
}
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String subCategoryId;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.subCategoryId,
  });

  factory Product.fromMap(Map<String, dynamic> data, String id) {
    return Product(
      id: id,
      name: data['name'] as String? ?? '',
      description: data['description'] as String? ?? '',
      price: (data['price'] as num?)?.toDouble() ?? 0.0,
      imageUrl: data['imageUrl'] as String? ?? '',
      subCategoryId: data['subCategoryId'] as String? ?? '',
    );
  }
}
