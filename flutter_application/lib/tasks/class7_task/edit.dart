// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/class7_task/data.dart';

class EditItem extends StatefulWidget {
  EditItem({
    Key? key,
  }) : super(key: key);

  @override
  State<EditItem> createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Map? arg = ModalRoute.of(context)!.settings.arguments as Map?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
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
                  initialValue: arg!['name'],
                  onSaved: (newValue) {
                    for (int i = 0; i < Data.items.length; i++) {
                      if (Data.items[i]['name'] == arg['name']) {
                        setState(() {
                          Data.items[i]['name'] = newValue;
                        });
                      }
                    }
                  },
                  decoration: InputDecoration(
                      label: Text('Name'), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: arg!['description'],
                  onSaved: (newValue) {
                    for (int i = 0; i < Data.items.length; i++) {
                      if (Data.items[i]['description'] == arg['description']) {
                        setState(() {
                          Data.items[i]['description'] = newValue;
                        });
                      }
                    }
                  },
                  decoration: InputDecoration(
                      label: Text('description'), border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextFormField(
                  initialValue:
                      arg['price'].toString(), //double.tryParse().toString(),
                  onSaved: (newValue) {
                    for (int i = 0; i < Data.items.length; i++) {
                      if (Data.items[i]['price'] == arg['price']) {
                        setState(() {
                          if (newValue != null && newValue.isNotEmpty) {
                            Data.items[i]['price'] = double.tryParse(newValue);
                          }
                          //  Data.items[i]['price'] = double.parse(newValue!);
                        });
                      }
                    }
                  },
                  decoration: InputDecoration(
                      label: Text('price'), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: arg!['image'],
                  onSaved: (newValue) {
                    for (int i = 0; i < Data.items.length; i++) {
                      if (Data.items[i]['image'] == arg['image']) {
                        setState(() {
                          Data.items[i]['image'] = newValue;
                        });
                      }
                    }
                  },
                  decoration: InputDecoration(
                      label: Text('image'), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    Navigator.pop(context);
                  },
                  color: Colors.yellow,
                  child: Text('Edit'),
                )
              ],
            )),
      ),
    );
  }
}
