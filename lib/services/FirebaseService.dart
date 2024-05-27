import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_dev_final/models/productModel.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Product>> getAllProducts() async {
    var productsSnapshot = await _db.collectionGroup('products').get();
    return productsSnapshot.docs.map((doc) {
      return Product.fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }).toList();
  }

  Future<List<Product>> getProductsBySubCategory(String subCategoryId) async {
    var productsSnapshot = await _db
        .collectionGroup('products')
        .where('subCategoryId', isEqualTo: subCategoryId)
        .get();
    return productsSnapshot.docs.map((doc) {
      return Product.fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }).toList();
  }
}
