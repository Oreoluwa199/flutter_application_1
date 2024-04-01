import 'package:flutter/material.dart';

import '../models/food.dart';

class Shop extends ChangeNotifier {
// Food
  final List<Food> _foodMenu = [
    // sushi
    Food(
      name: 'sushi',
      price: '21.00',
      imagePath: 'lib/images/sushi.png',
      rating: '4.9',
    ),
    //cake
    Food(
      name: 'Cake',
      price: '23.00',
      imagePath: 'lib/images/cake.png',
      rating: '5.0',
    ),
  ];
  // customer cart
  List<Food> _cart = [];
  //get methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
