import 'package:flutter/material.dart';
import 'package:flutter_mycart/pages/my_cart.dart';
import 'package:flutter_mycart/pages/my_catalog.dart';
import 'package:flutter_mycart/pages/my_login_screen.dart';
import 'package:flutter_mycart/pages/your_catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => MyLoginScreen(),
        "/catalog": (context) => MyCatalog(),
        "/cart": (context) => MyCart(),
        "/you": (context) => YourCatalog(),
      },
    );
  }
}
