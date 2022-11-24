import 'package:catalog_provider/provider/catalog_provider.dart';
import 'package:catalog_provider/widgets/cataloge_list.dart';
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
          SliverAppBar(
            backgroundColor: Colors.yellow,
            floating: true,
            title: const Text(
              "Catalog",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cart");
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              )
            ],
            centerTitle: true,
            //this is the most amazi
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: catalogProvider.products.length,
              (context, index) => CatalogList(index: index),
            ),
          )
        ],
      ),
    );
  }
}
