import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  List student = [
    {'name': 'Ahmad', 'age': 16},
    {'name': 'Ali', 'age': 16},
    {'name': 'Mohammad', 'age': 16},
  ];
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: student.length,
          itemBuilder: (context, index) {
            String item = student[index]['name'];
            return Dismissible(
              background: Container(
                color: Colors.red,
              ),
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(student[index]['name']),
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  student.removeAt(index);
                });

                // Then show a snackbar.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('${item} dismissed')));
              },
              child: Card(
                child: ListTile(
                  title: Text(student[index]['name']),
                  tileColor: _color,
                ),
              ),
            );
          }),
    );
  }
}
