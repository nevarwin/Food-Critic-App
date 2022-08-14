import 'package:flutter/material.dart';

class AddFoodForm extends StatefulWidget {
  const AddFoodForm({
    Key? key,
    required this.addFood,
  }) : super(key: key);

  final Function addFood;

  static const routeName = '/addFoodForm';

  @override
  State<AddFoodForm> createState() => _AddFoodFormState();
}

class _AddFoodFormState extends State<AddFoodForm> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final ingredientsController = TextEditingController();
  final servingController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    ingredientsController.dispose();
    servingController.dispose();
    priceController.dispose();
    super.dispose();
  }

  void _submitFood() {
    final tCtrl = nameController.text;
    final descCtrl = descriptionController.text;
    final ingreCtrl = ingredientsController.text;
    final servCtrl = servingController.text;
    final priceCtrl = int.parse(priceController.text);

    if (tCtrl.isEmpty &&
        descCtrl.isEmpty &&
        ingreCtrl.isEmpty &&
        servCtrl.isEmpty &&
        priceCtrl == 0) {
      return;
    }
    widget.addFood(
      tCtrl,
      descCtrl,
      ingreCtrl,
      servCtrl,
      priceCtrl,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              keyboardType: TextInputType.text,
              controller: nameController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
              ),
              keyboardType: TextInputType.text,
              controller: descriptionController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingredients',
              ),
              keyboardType: TextInputType.text,
              controller: ingredientsController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Servings',
              ),
              keyboardType: TextInputType.text,
              controller: servingController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
              controller: priceController,
            ),
            TextButton(
              onPressed: _submitFood,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
