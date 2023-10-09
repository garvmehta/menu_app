import 'package:flutter/material.dart';
import 'package:menu_app/models/category_model.dart';

class Order extends ChangeNotifier {
  int totalAmount = 0;
  List<Cart> cart = [];
  void addAmount(int newAmount) {
    totalAmount = newAmount;
    notifyListeners();
  }

  void addProductToCart(Cart newCart) {
    var founedIndex =
        cart.indexWhere((element) => element.name == newCart.name);
    print(founedIndex);
    if (founedIndex == -1) {
      cart.add(newCart);
    } else {
      cart[founedIndex].quantity = newCart.quantity;
    }
    int total = 0;
    cart.forEach((element) {
      total = total + element.price * element.quantity;
    });
    totalAmount = total;
    notifyListeners();
  }
}

class Cart extends Product {
  int quantity;
  Cart(super.name, super.inStock, super.price, this.quantity);
}
