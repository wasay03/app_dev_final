
import 'package:app_dev_final/providers/firebase_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RelatedProductsPage extends ConsumerWidget {
  final String subCategoryId;

  RelatedProductsPage({required this.subCategoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final relatedProductsAsyncValue = ref.watch(productsBySubCategoryProvider(subCategoryId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Related Products'),
      ),
      body: relatedProductsAsyncValue.when(
        data: (products) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text(product.description),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
