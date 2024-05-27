import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_dev_final/models/productModel.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Category>> getCategories() async {
    var categoriesSnapshot = await _db.collection('categories').get();
    return categoriesSnapshot.docs.map((doc) {
      var data = doc.data();
      return Category(
        id: doc.id,
        name: data['name'],
        subCategories: [],
      );
    }).toList();
  }

  Future<List<SubCategory>> getSubCategories(String categoryId) async {
    var subCategoriesSnapshot = await _db
        .collection('categories')
        .doc(categoryId)
        .collection('subCategories')
        .get();
    return subCategoriesSnapshot.docs.map((doc) {
      var data = doc.data();
      return SubCategory(
        id: doc.id,
        name: data['name'],
        products: [],
      );
    }).toList();
  }

  Future<List<Product>> getProducts(String categoryId, String subCategoryId) async {
    var productsSnapshot = await _db
        .collection('categories')
        .doc(categoryId)
        .collection('subCategories')
        .doc(subCategoryId)
        .collection('products')
        .get();
    return productsSnapshot.docs.map((doc) {
      var data = doc.data();
      return Product(
        id: doc.id,
        name: data['name'],
        description: data['description'],
        price: data['price'],
        imageUrl: data['imageUrl'],
      );
    }).toList();
  }
}
