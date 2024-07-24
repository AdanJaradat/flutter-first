import 'package:flutter/material.dart';
import 'package:flutter_application/class7/add.dart';
import 'package:flutter_application/class7/data.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Search(),
        '/addproduct': (context) => AddProduct(),
      },
      initialRoute: '/',
      //home: Search(),
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
  final GlobalKey<FormState> _editFormKey = GlobalKey();
  List showResult = [];
  // Map products = {
  //   'shoes': {
  //     'title': 'this is shoes',
  //     'price': 18.00,
  //     'image':
  //         'https://assets.ajio.com/medias/sys_master/root/20230927/sZ5P/6514157cddf779151908421d/-473Wx593H-466643036-peach-MODEL.jpg'
  //   },
  //   'bag': {
  //     'title': 'this is bag',
  //     'price': 20.00,
  //     'image': 'https://m.media-amazon.com/images/I/61Rb+rv0lNL._AC_UY1100_.jpg'
  //   },
  //   'handbag': {
  //     'title': 'this is handbag',
  //     'price': 50.00,
  //     'image':
  //         'https://assets.ajio.com/medias/sys_master/root/20230623/ymVy/6494ca7a42f9e729d77e0f7a/-473Wx593H-464397315-yellow-MODEL.jpg'
  //   },
  //   'tshirt': {
  //     'title': 'this is T-shirt',
  //     'price': 25.00,
  //     'image': 'https://scd.ps/wp-content/uploads/2019/01/tshirt-2.jpg'
  //   },
  //   'belt': {
  //     'title': 'this is belt',
  //     'price': 15.00,
  //     'image':
  //         'https://www.montblanc.com/variants/images/34480784411826304/A/w2500.jpg'
  //   },
  // };

  List productsList = [];
  @override
  void initState() {
    setState(() {
      List newList = Data.products.keys.toList();
      for (var i = 0; i < newList.length; i++) {
        productsList.add(Data.products[newList[i]]);
      }
    });

    super.initState();
  }

  void deleteProduct(int index) {
    String? keyToRemove;
    Data.products.forEach(
      (key, value) {
        if (value == showResult[index]) {
          keyToRemove = key;
        }
      },
    );
    Data.products.forEach(
      (key, value) {
        if (value == productsList[index]) {
          keyToRemove = key;
        }
      },
    );
    setState(() {
      showResult.remove(Data.products[keyToRemove]);
      productsList.remove(Data.products[keyToRemove]);
      Data.products.remove(keyToRemove);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addproduct').then((_) {
                  setState(() {
                    //newList = Data.products.keys.toList();
                    productsList = [];
                    for (var i = 0; i < Data.products.keys.length; i++) {
                      productsList
                          .add(Data.products[Data.products.keys.toList()[i]]);
                    }
                  });
                });
              },
              child: const Text('Add product')),
        ],
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
                    List prodKeys = Data.products.keys.toList();
                    List result = [];
                    for (int i = 0; i < prodKeys.length; i++) {
                      if (prodKeys[i].contains(value)) {
                        result.add(Data.products[prodKeys[i]]);
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
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: productsList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 3,
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Image.network(
                                    productsList[index]['image'],
                                    fit: BoxFit.fill,
                                    height: 150,
                                    width: 150,
                                  ),
                                  Row(
                                    children: [
                                      Text(productsList[index]['title']),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                          '${productsList[index]['price']} JD'),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              showDialog<void>(
                                                  context: context,
                                                  // barrierDismissible: false,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Edit product :'),
                                                      content: Form(
                                                        key: _editFormKey,
                                                        child:
                                                            SingleChildScrollView(
                                                          physics:
                                                              ScrollPhysics(),
                                                          child: Column(
                                                            children: [
                                                              TextFormField(
                                                                initialValue:
                                                                    productsList[
                                                                            index]
                                                                        [
                                                                        'title'],
                                                                onSaved:
                                                                    (newValue) {
                                                                  String?
                                                                      keyToEdit;
                                                                  Data.products
                                                                      .forEach(
                                                                    (key,
                                                                        value) {
                                                                      if (value ==
                                                                          productsList[
                                                                              index]) {
                                                                        keyToEdit =
                                                                            key;
                                                                      }
                                                                    },
                                                                  );
                                                                  setState(() {
                                                                    productsList[index]
                                                                            [
                                                                            'title'] =
                                                                        newValue!;
                                                                    Data.products[
                                                                            keyToEdit] =
                                                                        newValue;
                                                                  });
                                                                },
                                                                decoration: InputDecoration(
                                                                    // hintText: productsList[
                                                                    //         index]
                                                                    //     [
                                                                    //     'title'],
                                                                    border:
                                                                        OutlineInputBorder()),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      actions: [
                                                        MaterialButton(
                                                          onPressed: () {
                                                            _editFormKey
                                                                .currentState!
                                                                .save();
                                                          },
                                                          child: Text('edit'),
                                                        )
                                                      ],
                                                    );
                                                  });
                                            });
                                          },
                                          icon: Icon(
                                            Icons.edit,
                                            color: Colors.blue,
                                          )),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              deleteProduct(index);
                                            });
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              )),
                            );
                          }),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: showResult.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: SingleChildScrollView(
                                  child: Column(
                                children: [
                                  Image.network(
                                    showResult[index]['image'],
                                    fit: BoxFit.fill,
                                    width: 150,
                                    height: 150,
                                  ),
                                  Row(
                                    children: [
                                      Text(showResult[index]['title']),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('${showResult[index]['price']} JD'),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              deleteProduct(index);
                                              // productsList
                                              //     .remove(showResult[index]);
                                              // showResult.removeAt(index);
                                            });
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ))
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
