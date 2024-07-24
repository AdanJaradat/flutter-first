// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application/class7/data.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController productController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add product'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      productController.text = value!;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'product', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      titleController.text = value!;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'title', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      imageController.text = value!;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'image', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      priceController.text = value!;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'price', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Map newMap = {
                        '${productController.text}': {
                          'title': '${titleController.text}',
                          'price': '${priceController.text}',
                          'image': '${imageController.text}'
                        },
                      };
                      setState(() {
                        Data.products.addAll(newMap);
                      });
                    }
                    Navigator.pop(context, 'reload');
                  },
                  child: const Text('Add product'),
                )
              ],
            )),
      ),
    );
  }
}
