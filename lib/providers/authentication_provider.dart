import 'package:flutter/cupertino.dart';
import 'package:shoppify/models/authentication_model.dart';
import 'package:shoppify/services/authentication_services.dart';

class AuthenticationProvider extends ChangeNotifier {
  AuthenticationModel? loginModel;
  AuthenticationModel? signUpModel;

  Future<void> login({required String email, required String password}) async {
    loginModel = await AuthenticationService.login(
      email: email,
      password: password,
    );
  }

  Future<void> signUp({
    required String name,
    required String contact,
    required String email,
    required String password,
  }) async {
    signUpModel = await AuthenticationService.signUp(
      name: name,
      contact: contact,
      email: email,
      password: password,
    );
  }
}
