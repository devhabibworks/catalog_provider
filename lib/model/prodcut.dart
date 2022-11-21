import 'package:flutter/material.dart';

class Product {
  int? id;
  String? name;
  Color? color;
  int price = 42;

  Product.fromJson(Map<String, dynamic> data) {
    id = data["id"];
    name = data['name'];
    price = data["price"];
    color = Colors.primaries[id! % Colors.primaries.length];
  }
  Product(this.id, this.name, this.price)
      // To make the sample app look nicer, each Product is given one of the
      // Material Design primary colors.
      : color = Colors.primaries[id! % Colors.primaries.length];

  @override
  int get hashCode => id!;

  @override
  bool operator ==(Object other) => other is Product && other.id == id;
}
