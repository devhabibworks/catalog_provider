import 'package:catalog_provider/provider/cart_provider.dart';
import 'package:catalog_provider/provider/catalog_provider.dart';
import 'package:catalog_provider/screen/cart_screen.dart';
import 'package:catalog_provider/screen/catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => CatalogProvider()..getAllProducts()),
        ChangeNotifierProvider(create: (context) => CartProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "catalog": (context) => const CatalogScreen(),
          "cart": (context) => const CartScreen()
        },
        initialRoute: "catalog",
      ),
    );
  }
}
