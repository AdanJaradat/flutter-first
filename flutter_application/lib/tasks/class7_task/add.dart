import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/class7_task/data.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  String? _isValid(String? value) {
    if (value!.isEmpty) {
      return 'Required Value';
    } else
      null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  validator: _isValid,
                  controller: nameController,
                  onSaved: (value) {
                    nameController.text = value!;
                  },
                  decoration: InputDecoration(
                      label: Text('Mobile Name'), border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: _isValid,
                  controller: descriptionController,
                  onSaved: (value) {
                    descriptionController.text = value!;
                  },
                  decoration: InputDecoration(
                      label: Text('Description'), border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: _isValid,
                  controller: imageController,
                  onSaved: (value) {
                    imageController.text = value!;
                  },
                  decoration: InputDecoration(
                      label: Text('Image'), border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: _isValid,
                  controller: priceController,
                  onSaved: (value) {
                    priceController.text = value!;
                  },
                  decoration: InputDecoration(
                      label: Text('Price'), border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Map addMap = {
                        'name': nameController.text,
                        'price': double.parse(priceController.text),
                        'image': imageController.text,
                        'description': descriptionController.text,
                      };
                      Data.items.add(addMap);
                      Navigator.pop(context);
                    }
                  },
                  color: Colors.yellow,
                  child: Text('Add'),
                )
              ],
            )),
      ),
    );
  }
}
