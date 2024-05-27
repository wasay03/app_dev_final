import 'package:app_dev_final/Screens/RelatedProducts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_dev_final/models/productModel.dart';
import 'package:app_dev_final/providers/firebase_providers.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProductsAsyncValue = ref.watch(allProductsProvider);

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Product App'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ),
      body: allProductsAsyncValue.when(
        data: (products) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Column(
                children: [
                  Card(
                    
                    elevation: 20,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ListTile(
                            leading: Container(height: 10,width: 20,child: Image.network(product.imageUrl)),
                            title: Text(product.name),
                            subtitle: Text(product.description),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RelatedProductsPage(subCategoryId: product.subCategoryId),
                                ),
                              );
                            },
                          ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Order id"),Text("${product.id}")
                            ],),


                        Text("Price: \$${product.price}")
                        ],
                      
                      
                      ),
                    ),
                  ),
                  
                ],
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
