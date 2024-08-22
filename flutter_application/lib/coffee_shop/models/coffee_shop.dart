import 'package:flutter/material.dart';
import 'package:flutter_application/coffee_shop/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
        name: 'Black',
        price: 3.55,
        imgPath:
            'https://www.shutterstock.com/image-photo/coffee-americano-transparent-glass-cup-600nw-2153978599.jpg'),
    Coffee(
        name: 'latte',
        price: 4.0,
        imgPath:
            'https://ae-pic-a1.aliexpress-media.com/kf/Sb4aecd1bc4d84ed282ada896a427de62a.jpg_640x640Q90.jpg_.webp'),
    Coffee(
        name: 'esspresso',
        price: 2.35,
        imgPath:
            'https://m.media-amazon.com/images/I/71mnz2ZMzTL._AC_SL1500_.jpg'),
    Coffee(
        name: 'Iced Coffee',
        price: 3.55,
        imgPath:
            'https://frostingandfettuccine.com/wp-content/uploads/2022/12/Instant-Iced-Coffee-5-1.jpg'),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

  //total price
  double totalPrice() {
    double total = 0;
    for (var i = 0; i < userCart.length; i++) {
      total += userCart[i].price;
    }
    notifyListeners();
    return total;
  }
}
