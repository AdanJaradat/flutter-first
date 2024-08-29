import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Hero(
          tag: 'tag1',
          child: Container(
            width: 300,
            height: 300,
            // color: Colors.red,
            child: Image.network(
              'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
