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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: const Text('Home page'),
          centerTitle: true,
          leadingWidth: 100,
          leading: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            // margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png'),
            ),
          ),
          //
          backgroundColor: Colors.blue,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('click'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
              ),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: const Text('Home page'),
      //   leading: CircleAvatar(
      //     radius: 80,
      //     backgroundImage: NetworkImage(
      //         'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png'),
      //   ),
      //   leadingWidth: 50,
      // ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'text1',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 60),
                Text(
                  'text2',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'text3',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'text4',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 60),
                Text(
                  'text5',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
