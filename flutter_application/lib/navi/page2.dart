import 'package:flutter/material.dart';
import 'package:flutter_application/navi/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    String arg = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: Column(
        children: [
          const Text('Page2'),
          Text(arg),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Page1()));
              Navigator.pop(context); //backward
            },
            child: const Text('Page1'),
          )
        ],
      ),
    );
  }
}
