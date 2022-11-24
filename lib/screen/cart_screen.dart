import 'package:catalog_provider/provider/cart_provider.dart';
import 'package:catalog_provider/widgets/cart_list.dart';
import 'package:catalog_provider/widgets/price_wedget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartProvider.cartProducts.length,
              itemBuilder: (context, index) {
                return CartList(index: index);
              }),
          const PriceWidget()
        ],
      ),
    );
  }
}
