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
  String search = 'your result will appear here.';
  String title = '';
  String img = '';
  Map products = {
    'shoes': {
      'title': 'this is shoes',
      'image':
          'data:image/jpeg;base64,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'
    },
    'bag': {
      'title': 'this is bag',
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20230623/ymVy/6494ca7a42f9e729d77e0f7a/-473Wx593H-464397315-yellow-MODEL.jpg'
    },
    'T-shirt': {
      'title': 'this is T-shirt',
      'image':
          'data:image/jpeg;base64,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'
    },
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 200,
            child: Image.network(
              'https://w7.pngwing.com/pngs/537/866/png-transparent-flutter-hd-logo.png',
              fit: BoxFit.contain,
            ),
          ),
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
          SizedBox(
            height: 15,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                // if (value.isEmpty) {
                //   search = 'your result will appear here.';
                // } else {
                //   search = value;
                // }
                if (products.keys.contains(value)) {
                  title = products[value]['title'];
                  img = products[value]['image'];
                }
              });
            },
            decoration: InputDecoration(
                label: Text('search'),
                icon: Icon(Icons.search),
                hintText: 'search'),
          ),
          Text(search),

          title.isEmpty && img.isEmpty
              ? Text('not found')
              : Column(
                  children: [
                    Text(title),
                    Image.network(img),
                  ],
                )
        ],
      ),
    );
  }
}
