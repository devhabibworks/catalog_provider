import 'package:catalog_provider/model/prodcut.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  addProductToCart(Product product) {
    if (!_cartProducts.contains(product)) {
      _cartProducts.add(product);
      notifyListeners();
    }
  }

  removeProductFromCart(Product product) {
    if (_cartProducts.contains(product)) {
      _cartProducts.remove(product);
      notifyListeners();
    }
  }

  bool checkIfProductOnCart(Product product) {
    return _cartProducts.contains(product);
  }

  double getTotalPrice() {
    double value = 0;
    for (var product in _cartProducts) {
      value += product.price;
    }

    return value;
  }
}
