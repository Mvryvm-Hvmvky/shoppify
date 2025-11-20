import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppify/pages/home_page.dart';
import 'package:shoppify/providers/authentication_provider.dart';
import 'package:shoppify/providers/cart_provider.dart';
import 'package:shoppify/providers/product_provider.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
