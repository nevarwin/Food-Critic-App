import 'package:flutter/material.dart';
import 'package:food_critic_app/widgets/shop_description.dart';

import '../models/shop_model.dart';

class ShopTileWidget extends StatelessWidget {
  const ShopTileWidget({
    Key? key,
    required this.shopList,
  }) : super(key: key);

  final List<Shop> shopList;

  void _shopDescription(
    BuildContext context,
    int index,
  ) {
    Navigator.of(context).pushNamed(
      ShopDescription.routeName,
      arguments: shopList[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: shopList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _shopDescription(
              context,
              index,
            ),
            child: Card(
              elevation: 5.0,
              color: Colors.white70,
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: ColoredBox(
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shopList[index].name),
                    Text(shopList[index].description),
                    Text(shopList[index].location),
                  ],
                ),
                trailing: Icon(Icons.star),
              ),
            ),
          );
        },
      ),
    );
  }
}
