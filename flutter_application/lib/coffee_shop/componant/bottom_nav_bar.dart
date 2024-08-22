// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({
    Key? key,
    // required this.index,
    required this.onTapChange,
  }) : super(key: key);
  //int index;
  void Function(int) onTapChange;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: GNav(
        //currentIndex: widget.index,
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),

        tabs: [
          GButton(icon: Icons.home, text: 'shop'),
          GButton(icon: Icons.shopping_cart, text: 'cart'),
        ],
        onTabChange: (value) => widget.onTapChange(value),
      ),
    );
  }
}
