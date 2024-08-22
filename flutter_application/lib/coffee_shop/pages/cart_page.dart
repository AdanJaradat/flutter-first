import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/componant/cart_tile.dart';
import 'package:flutter_application/coffee_shop/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Your cart',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        return value.userCart.isNotEmpty
                            ? CartTile(
                                coffee: value.userCart[index],
                                onPressed: () {
                                  Provider.of<CoffeeShop>(context,
                                          listen: false)
                                      .removeItemFromCart(
                                          value.userCart[index]);
                                  var snackBar = SnackBar(
                                    content: Text('Removed successfuly'),
                                    backgroundColor: Colors.grey[500],
                                    action: SnackBarAction(
                                        label: 'Done',
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                        }),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              )
                            : Text(
                                'The cart is empty',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              );
                        // ListTile(
                        //   title: Text('${value.userCart[index]}'),
                        // );
                      }),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    double price =
                        Provider.of<CoffeeShop>(context, listen: false)
                            .totalPrice();
                    var snackBar =
                        SnackBar(content: Text('Total price :$price '));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * .05,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
