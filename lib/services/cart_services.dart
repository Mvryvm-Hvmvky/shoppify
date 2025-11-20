import 'package:dio/dio.dart';
import 'package:shoppify/models/cart_model.dart';

class CartServices {
  static Dio dio = Dio();

  static Future<CartModel> getCartItems({required int customerId}) async {
    try {
      Response response = await dio.get(
        "https://ecommerceflutter2.runasp.net/api/Cart/$customerId",
      );
      return CartModel.fromJson(response.data);
    } on DioException catch (dioEx) {
      throw Exception(dioEx.message);
    } catch (ex) {
      throw Exception(ex);
    }
  }

  static Future<void> deleteCartItem({
    required int customerId,
    required int cartItemId,
  }) async {
    try {
      await dio.delete(
        "https://ecommerceflutter2.runasp.net/api/Cart/$customerId/remove-product",
        data: {"productId": cartItemId},
      );
    } on DioException catch (dioEx) {
      throw Exception(dioEx.message);
    } catch (ex) {
      throw Exception(ex);
    }
  }

  static Future<void> addCartItem({
    required int productId,
    required int customerId,
  }) async {
    await dio.post(
      "https://ecommerceflutter2.runasp.net/api/Cart/$customerId/add-product",
      data: {"productId": productId},
    );
  }
}
