import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomGestureScreen(),
    );
  }
}

class CustomGestureScreen extends StatefulWidget {
  const CustomGestureScreen({super.key});

  @override
  State<CustomGestureScreen> createState() => _CustomGestureScreenState();
}

class _CustomGestureScreenState extends State<CustomGestureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Gesture'),
        backgroundColor: Colors.blue,
      ),
      body: ManagePeople(),
    );
  }
}

class ManagePeople extends StatefulWidget {
  const ManagePeople({super.key});

  @override
  State<ManagePeople> createState() => _ManagePeopleState();
}

class _ManagePeopleState extends State<ManagePeople> {
  List people = [
    {'name': 'Ahmad', 'age': 15, 'direction': ''},
    {'name': 'Ali', 'age': 16, 'direction': ''},
    {'name': 'Mohammad', 'age': 12, 'direction': ''},
    {'name': 'Omar', 'age': 18, 'direction': ''},
    {'name': 'Noor', 'age': 17, 'direction': ''},
  ];
  Color deleteColor = Colors.white;
  String direction = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                print('onLongPress');
              },
              onHorizontalDragCancel: () {
                deleteColor = Colors.red;
                print('onHorizontalDragCancel');
              },
              onHorizontalDragStart: (details) {
                if (details.globalPosition.dx > details.globalPosition.dy) {
                  people[index]['direction'] = 'right';
                  print('swiped right');
                } else {
                  people[index]['direction'] = 'left';
                  print('swiped left');
                }
                setState(() {
                  print('onHorizontalDragStart');
                });
              },
              child: ListTile(
                title: Text(
                    '${people[index]['name']} -- ${people[index]['direction']}'),
                subtitle: Text('${people[index]['age']}'),
                tileColor: deleteColor,
              ),
            );
          }),
    );
  }
}
