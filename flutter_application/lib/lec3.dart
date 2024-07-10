import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
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
  static String search = 'your result will appear here.';
  // String title = '';
  // String img = '';
  Map products = {
    'shoes': {
      'title': 'this is shoes',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20230927/sZ5P/6514157cddf779151908421d/-473Wx593H-466643036-peach-MODEL.jpg'
    },
    'bag': {
      'title': 'this is bag',
      'image': 'https://m.media-amazon.com/images/I/61Rb+rv0lNL._AC_UY1100_.jpg'
    },
    'handbag': {
      'title': 'this is handbag',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20230623/ymVy/6494ca7a42f9e729d77e0f7a/-473Wx593H-464397315-yellow-MODEL.jpg'
    },
    'tshirt': {
      'title': 'this is T-shirt',
      'image': 'https://scd.ps/wp-content/uploads/2019/01/tshirt-2.jpg'
    }
  };
  List foundedResult = [];
  bool isFound = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // Container(
          //   width: 100,
          //   height: 200,
          //   child: Image.network(
          //     'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png',
          //     fit: BoxFit.contain,
          //   ),
          // ),
          // Container(
          //   width: 100,
          //   height: 200,
          //   child: Image.network(
          //     'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // Container(
          //   width: 200,
          //   height: 400,
          //   child: Image.network(
          //     'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png',
          //     fit: BoxFit.fill,
          //   ),
          // ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            onChanged: (value) {
              //search = 'your result will appear here.';
              List productsKey = products.keys.toList();
              List result = [];
              for (var i = 0; i < productsKey.length; i++) {
                if (productsKey[i].contains(value)) {
                  result.add(products[productsKey[i]]);
                  print(products[productsKey[i]]);
                }
                isFound = true;
              }
              if (isFound == false) {
                search = 'not found';
                print('not found');
              }
              setState(() {
                foundedResult = result;
                // if (value.isEmpty) {
                //   search = 'your result will appear here.';
                // } else {
                //   search = value;
                // }
                // if (products.keys.contains(value)) {
                //   title = products[value]['title'];
                //   img = products[value]['image'];
                // }
              });
            },
            decoration: const InputDecoration(
                label: Text('search'),
                icon: Icon(Icons.search),
                hintText: 'search'),
          ),

          foundedResult.isEmpty
              ? const Text('not found')
              : Container(
                  height: 400,
                  width: 300,
                  child: ListView.builder(
                      itemCount: foundedResult.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(foundedResult[index]['title']),
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(
                                foundedResult[index]['image'],
                              ),
                            ));
                      }),
                )
          // Column(
          //     children: [
          //       Text(title),
          //       Image.network(img),
          //     ],
          //   )
        ],
      ),
    );
  }
}
