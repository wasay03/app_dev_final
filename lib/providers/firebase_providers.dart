import 'package:app_dev_final/services/FirebaseService.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:app_dev_final/models/productModel.dart';

part 'firebase_providers.g.dart';

@riverpod
FirebaseService firebaseService(FirebaseServiceRef ref) {
  return FirebaseService();
}

@riverpod
Future<List<Category>> categories(CategoriesRef ref) async {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getCategories();
}

@riverpod
Future<List<SubCategory>> subCategories(SubCategoriesRef ref, String categoryId) async {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getSubCategories(categoryId);
}

@riverpod
Future<List<Product>> products(ProductsRef ref, String categoryId, String subCategoryId) async {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return firebaseService.getProducts(categoryId, subCategoryId);
}
