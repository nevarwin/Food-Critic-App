import 'package:flutter/material.dart';

import '../models/shop_model.dart';

class ShopDescription extends StatelessWidget {
  const ShopDescription({Key? key}) : super(key: key);

  static const routeName = '/shop-description-screen';

  @override
  Widget build(BuildContext context) {
    final shopList = ModalRoute.of(context)?.settings.arguments as List<Shop>;

    var shopId;
    for (var i = 0; i < shopList.length; i++) {
      if (id == shopList[i].id) {
        shopId = shopList[i].id;
      }
    }

    final shops = shopList.where(
      (shops) {
        return shops.id.contains(shopId);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shops'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: shops.length,
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                Text(shops[index].name),
                Text(shops[index].description),
                Text(shops[index].location),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
