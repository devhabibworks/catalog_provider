import 'package:catalog_provider/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Container(
      height: 100,
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              "Total :",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "${cartProvider.getTotalPrice()}   YER",
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
                child: TextButton(onPressed: () {}, child: const Text("Buy")))
          ],
        ),
      ),
    );
  }
}
