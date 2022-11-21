import 'package:catalog_provider/model/prodcut.dart';
import 'package:catalog_provider/service/local_data.dart';

class ProductService {
  Future<List<Product>> getAllProducts() async {
    List<Product> listOfProduct = [];

    List<Map<String, dynamic>> fetchedData = await Future.delayed(
        const Duration(seconds: 2), () => ConstantData.dataAsJson);

    for (var json in fetchedData) {
      listOfProduct.add(Product.fromJson(json));
    }

    return listOfProduct;
  }
}
