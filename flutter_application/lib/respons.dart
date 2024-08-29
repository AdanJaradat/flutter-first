import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyResponsiveApp(),
    );
  }
}

class MyResponsiveApp extends StatelessWidget {
  const MyResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopScreen();
        }
        if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return TabletScreen();
        } else {
          return MobileScreen();
        }
      }),
    );
  }
}

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop Screen'),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Header'),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 2 -
                    (MediaQuery.of(context).size.height * 0.01),
                color: const Color.fromARGB(255, 13, 140, 243),
                child: Text('side bar'),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 2 -
                    (MediaQuery.of(context).size.height * 0.01),
                color: Colors.blue[100],
                child: Text('Content'),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 2 -
                    (MediaQuery.of(context).size.height * 0.01),
                color: const Color.fromARGB(255, 3, 50, 88),
                child: Text('Additional part'),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Footer'),
          ),
        ],
      ),
    );
  }
}

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tablet Screen'),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Header'),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height * 0.5 - 1,
                color: Colors.blue[100],
                child: Text('Content'),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height * 0.5 - 1,
                color: const Color.fromARGB(255, 10, 51, 85),
                child: Text('Additional part'),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Footer'),
          ),
        ],
      ),
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Screen'),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Header'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2 - 1,
            color: Colors.blue[100],
            child: Text('Content'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue[100],
            child: Text('Footer'),
          ),
        ],
      ),
    );
  }
}
