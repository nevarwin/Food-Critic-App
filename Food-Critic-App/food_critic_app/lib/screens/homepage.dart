import 'package:flutter/material.dart';

import '../widgets/add_shop_form.dart';
import 'package:food_critic_app/widgets/shop_tile_widget.dart';

import '../models/shop_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Shop> _shopList = [];

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
      _shopList.add(newShop);
    });
  }

  void _showModal() {
    showModalBottomSheet(
      // isScrollControlled: true,
      context: context,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: AddShopForm(addShop: _addShop),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Critic App'),
        actions: [
          IconButton(
            onPressed: _showModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('hello'),
          ),
          ShopTileWidget(shopList: _shopList),
        ],
      ),
    );
  }
}
