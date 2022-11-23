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
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: catalogProvider.products[index].color),
      ),
      title: Text(catalogProvider.products[index].name ?? "no name"),
      subtitle: Text("${catalogProvider.products[index].price}RY"),
      trailing: TextButton(
        onPressed: () {},
        child: const Text("add"),
      ),
    );
  }
}
