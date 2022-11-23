import 'package:catalog_provider/model/prodcut.dart';
import 'package:catalog_provider/service/local_data.dart';

class ProductService {
  //function used to fech data from database
  Future<List<Product>> getAllProducts() async {
    //define variable list of models
    List<Product> listOfProduct = [];

    //used to fech data from database in our example local data
    List<Map<String, dynamic>> fetchedData = await Future.delayed(
        const Duration(seconds: 5), () => ConstantData.dataAsJson);

    //convert jsons to models
    for (var json in fetchedData) {
      listOfProduct.add(Product.fromJson(json));
    }

    return listOfProduct;
  }
}
