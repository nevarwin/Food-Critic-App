import 'package:flutter/material.dart';

import '../models/shop_model.dart';

class ShopTileWidget extends StatelessWidget {
  ShopTileWidget({
    Key? key,
    required this.addShop,
  }) : super(key: key);

  final List<Shop> addShop;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addShop.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            child: ColoredBox(
              color: Colors.black,
            ),
          ),
          subtitle: Column(
            children: [
              Text('Shop Title'),
              Text('Shop Description'),
            ],
          ),
          trailing: Icon(Icons.star),
        );
      },
    );
  }
}
