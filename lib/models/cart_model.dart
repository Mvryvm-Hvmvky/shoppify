import 'package:shoppify/models/product_model.dart';

class CartModel {
  final int id;
  final int totalPrice;
  List<ProductModel> cartItems;

  CartModel({
    required this.id,
    required this.totalPrice,
    required this.cartItems,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    List<ProductModel> temp = json["products"]
        .map<ProductModel>((product) => ProductModel.fromJson(json["products"]))
        .toList();

    return CartModel(
      id: json["id"],
      totalPrice: json["totalPrice"],
      cartItems: temp,
    );
  }
}
