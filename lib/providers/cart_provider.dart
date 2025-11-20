import 'package:flutter/material.dart';
import 'package:shoppify/models/cart_model.dart';
import 'package:shoppify/services/cart_services.dart';

class CartProvider extends ChangeNotifier {
  CartModel? cartModel;

  Future<void> getCartItems({required int customerId}) async {
    cartModel = await CartServices.getCartItems(customerId: customerId);
    notifyListeners();
  }

  Future<void> deleteCartItem({
    required int customerId,
    required int cartItemId,
  }) async {
    await CartServices.deleteCartItem(
      customerId: customerId,
      cartItemId: cartItemId,
    );
    getCartItems(customerId: customerId);
    notifyListeners();
  }

  Future<void> addCartItem({
    required int customerId,
    required int productId,
  }) async {
    await CartServices.addCartItem(
      productId: productId,
      customerId: customerId,
    );
    notifyListeners();
  }
}
