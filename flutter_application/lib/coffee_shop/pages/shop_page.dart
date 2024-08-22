import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/componant/coffee_tile.dart';
import 'package:flutter_application/coffee_shop/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'How would you like your coffee ?',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      return CoffeeTile(
                        coffee: value.coffeeShop[index],
                        onPressed: () {
                          Provider.of<CoffeeShop>(context, listen: false)
                              .addItemToCart(value.coffeeShop[index]);
                          var snackbar = SnackBar(
                            content: Text('Added successfuly'),
                            backgroundColor: Colors.grey[500],
                            action: SnackBarAction(
                                label: 'Done',
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                }),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        },
                      );
                      // return ListTile(
                      //     title: Text('${value.coffeeShop[index].name}'));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
