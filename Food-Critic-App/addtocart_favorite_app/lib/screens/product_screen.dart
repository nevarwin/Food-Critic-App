import 'package:addtocart_favorite_app/provider/product_model.dart';
import 'package:flutter/material.dart';

import '../widgets/product_item_widget.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    Key? key,
  }) : super(key: key);

  final List<Product> productList = [
    Product(
      id: DateTime.now().toIso8601String(),
      title: 'Title1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductItemWidget(
              title: productList[index].title,
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
