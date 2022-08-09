import 'package:flutter/material.dart';

class AddShopForm extends StatefulWidget {
  const AddShopForm({
    Key? key,
    required this.addShop,
  }) : super(key: key);

  final Function addShop;

  @override
  State<AddShopForm> createState() => _AddShopFormState();
}

class _AddShopFormState extends State<AddShopForm> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    locationController.dispose();
    super.dispose();
  }

  void _submitShop() {
    final tCtrl = titleController.text;
    final descCtrl = descriptionController.text;
    final locCtrl = locationController.text;

    if (tCtrl.isEmpty && descCtrl.isEmpty && locCtrl.isEmpty) {
      return;
    }
    widget.addShop(
      tCtrl,
      descCtrl,
      locCtrl,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Title',
          ),
          keyboardType: TextInputType.text,
          controller: titleController,
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
            labelText: 'Location',
          ),
          keyboardType: TextInputType.text,
          controller: locationController,
        ),
        TextButton(
          onPressed: _submitShop,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
