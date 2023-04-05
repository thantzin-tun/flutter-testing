import 'package:first_flutter_project/main.dart';
import "package:first_flutter_project/first_screen.dart";
import 'package:first_flutter_project/routes/constantRoutes.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const MyApp());
      case firstPage:
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(
            child: Text("Sorry,No routes found!"),
          ),
        ));
    }
  }
}