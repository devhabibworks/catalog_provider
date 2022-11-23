import 'package:catalog_provider/provider/catalog_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogList extends StatelessWidget {
  CatalogList({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    CatalogProvider catalogProvider = Provider.of<CatalogProvider>(context);

    return ListTile(
      title: Text(catalogProvider.products[index].name ?? "no name"),
    );
  }
}
