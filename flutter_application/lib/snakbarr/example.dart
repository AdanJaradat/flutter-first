import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List student = ['Mohammad', 'Ahmad', 'Ali', 'Noor'];
  Map deletedItem = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Snackbar',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: student.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${student[index]}'),
                  trailing: IconButton(
                      onPressed: () {
                        deletedItem['removed'] = {
                          'index': index,
                          'value': '${student[index]}'
                        };
                        setState(() {});
                        student.removeAt(index);

                        final snackbar = SnackBar(
                          content: Text('Areyou sure to delete '),
                          action: SnackBarAction(
                            label: 'undo',
                            onPressed: () {
                              student.insert(deletedItem['removed']['index'],
                                  deletedItem['removed']['value']);
                              setState(() {});
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      icon: Icon(Icons.delete)),
                );
              })),
    );
  }
}
