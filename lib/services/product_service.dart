import 'package:dio/dio.dart';
import 'package:shoppify/models/products_model.dart';

class ProductServices {
  static Dio dio = Dio();

  static Future<ProductsModel> getProducts() async {
    try {
      Response response = await dio.get(
        "https://ecommerceflutter2.runasp.net/api/Product/all",
      );
      return ProductsModel.fromJson(response.data);
    } on DioException catch (dioEx) {
      throw Exception(dioEx.message);
    } catch (ex) {
      throw Exception(ex);
    }
  }
}
