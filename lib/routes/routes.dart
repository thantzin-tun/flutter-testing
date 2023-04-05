import 'package:first_flutter_project/main.dart';
import "package:first_flutter_project/views/first_screen.dart";
import 'package:first_flutter_project/routes/constantRoutes.dart';
import 'package:first_flutter_project/views/second_screen.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const MyApp());
      case firstPage:
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      case secondPage:
        return MaterialPageRoute(builder: (context) => const SecondScreen());  
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(
            child: Text("Sorry,No routes found!"),
          ),
        ));
    }
  }
}