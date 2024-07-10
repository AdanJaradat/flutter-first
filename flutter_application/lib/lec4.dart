import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameController = TextEditingController();
  bool _activeOrNot = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form widget'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'The Name is required';
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
                FormField(builder: (FormFieldState) {
                  return Checkbox(
                      value: _activeOrNot,
                      onChanged: (value) {
                        setState(() {
                          _activeOrNot = value!;
                        });
                      });
                }),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('Success');
                    }
                  },
                  child: const Text('Submit'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            )),
      ),
    );
  }
}
