import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/models/coffee.dart';

class CartTile extends StatelessWidget {
  const CartTile({required this.coffee, required this.onPressed, super.key});
  final Coffee coffee;
  final void Function() onPressed;
  //final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(18),
      child: ListTile(
        title: Text('${coffee.name}'),
        subtitle: Text('${coffee.price}'),
        trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.remove)),
        leading: Image.network(
          '${coffee.imgPath}',
          fit: BoxFit.cover,
          width: 65,
          height: 65,
        ),
      ),
    );
  }
}
