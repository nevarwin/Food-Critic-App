import 'package:flutter/material.dart';

import '../provider/product_model.dart';
import '../widgets/product_grid_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: const ProductGridWidget(),
    );
  }
}
