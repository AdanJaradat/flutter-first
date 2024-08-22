import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/componant/bottom_nav_bar.dart';
import 'package:flutter_application/coffee_shop/const.dart';
import 'package:flutter_application/coffee_shop/pages/cart_page.dart';
import 'package:flutter_application/coffee_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [ShopPage(), CartPage()];
  int _selectedIndex = 0;
  void currentIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: CustomBottomNavBar(
        onTapChange: (value) => currentIndex(value),
      ),
      body: pages.elementAt(_selectedIndex),
    );
  }
}
