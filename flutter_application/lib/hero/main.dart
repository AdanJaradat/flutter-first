import 'package:flutter/material.dart';
import 'package:flutter_application/hero/fifth.dart';
import 'package:flutter_application/hero/fourth.dart';
import 'package:flutter_application/hero/second.dart';
import 'package:flutter_application/hero/third.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Hero(
                  tag: 'tag1',
                  child: Image.network(
                    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
                    width: 100,
                    height: 100,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              child: Hero(
                  tag: 'tag2',
                  child: Image.network(
                    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
                    width: 100,
                    height: 100,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthPage()));
              },
              child: Hero(
                  tag: 'tag4',
                  child: Image.network(
                    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
                    width: 100,
                    height: 100,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fifth()));
              },
              child: Hero(
                  tag: 'tag5',
                  child: Image.network(
                    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
                    width: 100,
                    height: 100,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
