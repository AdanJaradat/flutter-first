import 'package:flutter/material.dart';
import 'package:flutter_application/tasks/class7_task/add.dart';
import 'package:flutter_application/tasks/class7_task/data.dart';
import 'package:flutter_application/tasks/class7_task/delete.dart';
import 'package:flutter_application/tasks/class7_task/edit.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/additem': (context) => AddItem(),
        '/edititem': (context) => EditItem(),
        '/deleteitem': (context) => DeleteItem(),
        '/': (context) => Home(),
      },
      initialRoute: '/',
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey(); //delete
  List showResult = [];
  Future<void> _showDeleteDialog(Map item) {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Confirm deletion',
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          content: const Text(
            'Are you sure you want to delete this item ?',
            style: TextStyle(
                fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          actions: [
            MaterialButton(
              child: const Text('Delete'),
              color: Colors.red,
              onPressed: () {
                Data.items.remove(item);
                Navigator.of(context).pop();
              },
            ),
            MaterialButton(
              child: const Text('Cancel'),
              color: Colors.yellow,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart-Mobile'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/additem').then((_) {
                setState(() {});
              });
            },
            icon: Icon(Icons.add),
            iconSize: 45,
          )
        ],
      ),
      body: Container(
          //margin: EdgeInsets.all(30),
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Form(
                  key: _formKey,
                  child: TextFormField(
                    onChanged: (value) {
                      showResult = [];
                      setState(() {
                        for (int i = 0; i < Data.items.length; i++) {
                          if (Data.items[i]['name'].contains(value)) {
                            showResult.add(Data.items[i]);
                          }
                        }
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search',
                        border: OutlineInputBorder()),
                  )),
            ),
          ),
          //!
          Expanded(
              flex: 6,
              child: showResult.isEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: Data.items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 3,
                          child: ListTile(
                              title: Text(
                                Data.items[index]['name'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Data.items[index]['description']),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Price : ${Data.items[index]['price']} JD',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              leading: Image.network(
                                Data.items[index]['image'],
                                fit: BoxFit.fill,
                                width: 90,
                                height: 90,
                              ),
                              trailing: SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                                context, '/edititem',
                                                arguments: Data.items[index])
                                            .then((_) {
                                          setState(() {});
                                        });
                                      },
                                      icon: Icon(Icons.edit),
                                      //color: Colors.yellow,
                                      iconSize: 15,
                                    ),
                                    // SizedBox(
                                    //   height: 1,
                                    // ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _showDeleteDialog(Data.items[index])
                                              .then((_) {
                                            setState(() {});
                                          });
                                        });
                                      },
                                      icon: Icon(Icons.delete),
                                      //color: Colors.red,
                                      iconSize: 15,
                                    ),
                                  ],
                                ),
                              )),
                        );
                        //
                      })
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: showResult.length,
                      itemBuilder: (context, index) {
                        return Text(showResult[index]['name']);
                      }))
        ],
      )),
    );
  }
}
