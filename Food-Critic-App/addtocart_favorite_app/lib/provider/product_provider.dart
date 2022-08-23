import 'package:flutter/material.dart';
import './product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [];

  List<Product> get productList {
    return [..._productList];
  }
}
