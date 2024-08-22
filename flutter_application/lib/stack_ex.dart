import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackPage(),
    );
  }
}

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          Container(
            width: 500,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.red,
          ),
          Positioned(
            bottom: 12,
            child: Text('Hi Iam here')),
        ],
      ),
    );
  }
}
