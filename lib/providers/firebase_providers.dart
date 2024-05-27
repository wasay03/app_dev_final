import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:app_dev_final/services/FirebaseService.dart';
import 'package:app_dev_final/models/productModel.dart';

part 'firebase_providers.g.dart';

@riverpod
FirebaseService firebaseService(FirebaseServiceRef ref) {
  return FirebaseService();
}

@riverpod
Future<List<Product>> allProducts(AllProductsRef ref) async {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getAllProducts();
}

@riverpod
Future<List<Product>> productsBySubCategory(ProductsBySubCategoryRef ref, String subCategoryId) async {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getProductsBySubCategory(subCategoryId);
}
