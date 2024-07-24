import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/btm_nav_bar/cstm_drawer.dart';

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
  List<Widget> pages = [
    Text('Profile Page'),
    Text('Home Page'),
    Text('Settings Page'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      //!NavigationBar() --- widget
      bottomNavigationBar: NavigationBar(
        elevation: 3,
        indicatorColor: Colors.blue,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      //!BottomNavigationBar() --- widget
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 3,
      //   selectedItemColor: const Color.fromARGB(255, 43, 91, 175),
      //   selectedLabelStyle:
      //       TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //   iconSize: 27,
      //   backgroundColor: Colors.blue[50],
      //   currentIndex: index,
      //   onTap: (value) {
      //     setState(() {
      //       index = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
      body: pages[index],
    );
  }
}
