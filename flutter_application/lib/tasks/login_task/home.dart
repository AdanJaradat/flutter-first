// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/login_task/login.dart';

class Home extends StatelessWidget {
  Home({super.key});
  // final String username;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leadingWidth: 150,
        backgroundColor: Colors.purple[100],
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            SizedBox(width: 5),
            Text(
              args,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.all(20),
                  elevation: 9,
                  child: Stack(
                    children: [
                      Container(
                              width: MediaQuery.of(context).size.width,
                          height: 200,
                        child: Image.network(
                          'https://m.media-amazon.com/images/I/81bChCCYDWL._AC_UF350,350_QL80_.jpg',
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width ,
                          decoration: BoxDecoration(color: Colors.purple[500]),
                          child: Text(
                            'Reed diffusers',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
