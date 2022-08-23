import 'package:flutter/material.dart ';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static const routeName = '/product-detail-screen';

  @override
  Widget build(BuildContext context) {
    final prodTitle = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(prodTitle),
      ),
    );
  }
}
