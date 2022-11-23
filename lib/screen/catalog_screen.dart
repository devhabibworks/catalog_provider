import 'dart:math';
import 'package:catalog_provider/provider/catalog_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CatalogProvider catalogProvider = Provider.of<CatalogProvider>(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.yellow,
            floating: true,
            title: Text(
              "Catalog",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: catalogProvider.products.length,
                  (context, index) => Container(
                        height: 100,
                        color: Color.fromARGB(
                            Random.secure().nextInt(255),
                            Random.secure().nextInt(255),
                            Random.secure().nextInt(255),
                            Random.secure().nextInt(255)),
                      )))
        ],
      ),
    );
  }
}
