import 'package:catalog_provider/model/prodcut.dart';
import 'package:catalog_provider/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartList extends StatelessWidget {
  CartList({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    Product product = cartProvider.cartProducts[index];

    return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19), color: product.color),
        ),
        title: Text(product.name ?? "no name"),
        subtitle: Text("${product.price}RY"),
        trailing: cartProvider.checkIfProductOnCart(product)
            ? InkWell(
                onTap: () {
                  cartProvider.removeProductFromCart(product);
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
              )
            : TextButton(
                onPressed: () {
                  cartProvider.addProductToCart(product);
                },
                child: const Text("add"),
              ));
  }
}
