import 'package:shoppify/models/product_model.dart';

class ProductsModel {
  List<ProductModel> products;

  ProductsModel({required this.products});
  factory ProductsModel.fromJson(List<Map<String, dynamic>> json) {
    List<ProductModel> temp = json
        .map<ProductModel>((product) => ProductModel.fromJson(product))
        .toList();
    return ProductsModel(products: temp);
  }
}
