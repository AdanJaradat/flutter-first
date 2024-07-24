import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String pageString = 'page 1 variable';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Column(
        children: [
          const Text('Page1'),
          ElevatedButton(
            onPressed: () {
              //Navigator.of(context).pushNamed('Page2');
              Navigator.of(context).pushNamed('/Page2', arguments: pageString);
            },
            child: const Text('Page2'),
          )
        ],
      ),
    );
  }
}
