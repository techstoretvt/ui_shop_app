import 'package:flutter/material.dart';
import 'package:ui_shop_app/pages/CartPage.dart';
import 'package:ui_shop_app/pages/HomePage.dart';
import 'package:ui_shop_app/pages/ProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'cart': (context) => const CartPage(),
        'product': (context) => ProductPage()
      },
    );
  }
}
