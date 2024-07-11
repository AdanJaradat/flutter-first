import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Search(),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  List showResult = [];
  Map products = {
    'shoes': {
      'title': 'this is shoes',
      'price': 18.00,
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20230927/sZ5P/6514157cddf779151908421d/-473Wx593H-466643036-peach-MODEL.jpg'
    },
    'bag': {
      'title': 'this is bag',
      'price': 20.00,
      'image': 'https://m.media-amazon.com/images/I/61Rb+rv0lNL._AC_UY1100_.jpg'
    },
    'handbag': {
      'title': 'this is handbag',
      'price': 50.00,
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20230623/ymVy/6494ca7a42f9e729d77e0f7a/-473Wx593H-464397315-yellow-MODEL.jpg'
    },
    'tshirt': {
      'title': 'this is T-shirt',
      'price': 25.00,
      'image': 'https://scd.ps/wp-content/uploads/2019/01/tshirt-2.jpg'
    },
    'belt': {
      'title': 'this is belt',
      'price': 15.00,
      'image':
          'https://www.montblanc.com/variants/images/34480784411826304/A/w2500.jpg'
    },
  };
  List productsList = [];
  @override
  void initState() {
    List newList = products.keys.toList();
    for (var i = 0; i < newList.length; i++) {
      productsList.add(products[newList[i]]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  onChanged: (value) {
                    List prodKeys = products.keys.toList();
                    List result = [];
                    for (int i = 0; i < prodKeys.length; i++) {
                      if (prodKeys[i].contains(value)) {
                        result.add(products[prodKeys[i]]);
                      }
                    }
                    setState(() {
                      showResult = result;
                    });
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      label: Text('Search'),
                      border: OutlineInputBorder()),
                ),
              ),
              showResult.isEmpty
                  ? Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: productsList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Image.network(productsList[index]['image']),
                                  Row(
                                    children: [
                                      Text(productsList[index]['title']),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          '${productsList[index]['price']} JD'),
                                    ],
                                  )
                                ],
                              )),
                            );
                          }),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height * .8,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: showResult.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Image.network(showResult[index]['image']),
                                  Row(
                                    children: [
                                      Text(showResult[index]['title']),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('${showResult[index]['price']} JD'),
                                    ],
                                  )
                                ],
                              )),
                            );
                          }),
                    )
            ],
          )),
    );
  }
}
