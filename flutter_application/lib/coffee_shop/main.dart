import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/models/coffee_shop.dart';
import 'package:flutter_application/coffee_shop/pages/home.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
