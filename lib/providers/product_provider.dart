import 'package:flutter/material.dart';
import 'package:shoppify/models/products_model.dart';
import 'package:shoppify/services/product_service.dart';

class ProductProvider extends ChangeNotifier{
  ProductsModel? productsModel;
  Future<void> getProducts()async{
    productsModel = await ProductServices.getProducts();
  }
}