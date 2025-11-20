import 'package:dio/dio.dart';
import 'package:shoppify/models/authentication_model.dart';

class AuthenticationService {
  static Dio dio = Dio();

  static Future<AuthenticationModel> login({
    required String email,
    required String password,
  }) async {
    Response response = await dio.post(
      "https://ecommerceflutter2.runasp.net/api/Customer/login",
      data: {"email": email, "password": password},
    );
    return AuthenticationModel.fromJson(response.data);
  }

  static Future<AuthenticationModel> signUp({
    required String name,
    required String contact,
    required String email,
    required String password,
  }) async {
    Response response = await dio.post(
      "https://ecommerceflutter2.runasp.net/api/Customer/signup",
      data: {
        "name": name,
        "contact": contact,
        "email": email,
        "password": password,
      },
    );
    return AuthenticationModel.fromJson(response.data);
  }
}
