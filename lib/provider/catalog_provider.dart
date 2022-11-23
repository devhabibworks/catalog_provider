import 'package:catalog_provider/model/prodcut.dart';
import 'package:catalog_provider/service/product_service.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  getAllProducts() async {
    ProductService service = ProductService();
    _products = await service.getAllProducts();
    notifyListeners();
  }
}
