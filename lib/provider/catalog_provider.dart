import 'package:catalog_provider/model/prodcut.dart';
import 'package:catalog_provider/service/product_service.dart';
import 'package:flutter/material.dart';

class CatalogProvider with ChangeNotifier {
  // private products or state
  List<Product> _products = [];
  List<Product> get products => _products;

  getAllProducts() async {
    ProductService service = ProductService();
    // wait for products
    _products = await service.getAllProducts();
    // update the screen after finish getting data
    notifyListeners();
  }
}
