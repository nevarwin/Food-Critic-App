import 'package:flutter/material.dart';
import 'package:food_critic_app/widgets/shop_tile_widget.dart';

import '../models/shop_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Shop> shopList = [];

  void _addShop(
    String shopName,
    String desc,
    String location,
  ) {
    final newShop = Shop(
      id: DateTime.now().toIso8601String(),
      name: shopName,
      description: desc,
      location: location,
    );
    setState(() {
      shopList.add(newShop);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Critic App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ShopTileWidget(addShop: _addShop),
    );
  }
}
