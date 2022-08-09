import 'package:flutter/material.dart';

import '../models/shop_model.dart';

class ShopTileWidget extends StatelessWidget {
  ShopTileWidget({
    Key? key,
    required this.shopList,
  }) : super(key: key);

  final List<Shop> shopList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: shopList.length,
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
      ),
    );
  }
}
