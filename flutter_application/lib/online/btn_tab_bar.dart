import 'package:flutter/material.dart';

class BtnTabBar extends StatefulWidget {
  BtnTabBar(
      {required this.title,
      required this.imgUrl,
      required this.onPress,
      super.key});
  String imgUrl;
  String title;
  void Function() onPress;

  @override
  State<BtnTabBar> createState() => _BtnTabBarState();
}

class _BtnTabBarState extends State<BtnTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black.withOpacity(.3),
                minimumSize: Size(35, 50)),
            onPressed: widget.onPress,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                      widget.imgUrl,
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Text(widget.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)),
              ],
            )));
  }
}
