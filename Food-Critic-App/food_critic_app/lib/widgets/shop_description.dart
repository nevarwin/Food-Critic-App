import 'package:flutter/material.dart';

import 'package:food_critic_app/models/food_model.dart';
import 'package:food_critic_app/widgets/add_food_form.dart';

import '../models/shop_model.dart';

class ShopDescription extends StatefulWidget {
  const ShopDescription({Key? key}) : super(key: key);

  static const routeName = '/shop-description-screen';

  @override
  State<ShopDescription> createState() => _ShopDescriptionState();
}

class _ShopDescriptionState extends State<ShopDescription> {
  @override
  Widget build(BuildContext context) {
    // Extract the arguments in routeName
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Shop;

    // make a list from a routeArgs
    final shopList = [
      Shop(
        id: routeArgs.id,
        name: routeArgs.name,
        description: routeArgs.description,
        location: routeArgs.location,
      ),
    ];

    final shopId = routeArgs.id;
    final shopName = routeArgs.name;

    final filter = shopList.where(
      (element) {
        return element.id.contains(shopId);
      },
    );

    final List<Food> _foodList = [];

    void _addFood(
      String foodName,
      String foodDesc,
      String foodIngre,
      String foodServing,
      int foodPrice,
    ) {
      final newFood = Food(
        id: DateTime.now().toIso8601String(),
        name: shopName,
        description: foodDesc,
        ingredients: foodIngre,
        servings: foodServing,
        price: foodPrice,
      );
      setState(() {
        _foodList.add(newFood);
      });
    }

    void _showModal() {
      showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: AddFoodForm(addFood: _addFood),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(shopName),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: filter.length,
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                Text(shopList[index].name),
                Text(shopList[index].description),
                Text(shopList[index].location),
                ElevatedButton.icon(
                  onPressed: _showModal,
                  icon: const Icon(Icons.icecream_rounded),
                  label: const Text('Foods'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
