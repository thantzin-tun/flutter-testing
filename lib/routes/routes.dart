import 'package:first_flutter_project/main.dart';
import 'package:first_flutter_project/views/fifth_screen.dart';
import "package:first_flutter_project/views/first_screen.dart";
import 'package:first_flutter_project/routes/constantRoutes.dart';
import 'package:first_flutter_project/views/fourth_screen.dart';
import 'package:first_flutter_project/views/second_screen.dart';
import 'package:first_flutter_project/views/six_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const MyApp());
      case firstPage:
        return MaterialPageRoute(builder: (context) => const FirstScreen());
      case secondPage:
        return MaterialPageRoute(builder: (context) => const SecondScreen());
      case fourthPage:
        return MaterialPageRoute(builder: (context) => const FourthScreen());
      case fifthPage:
        return MaterialPageRoute(builder: (context) => const FifthScreen());
      case sixPage:
        return MaterialPageRoute(builder: (context) => const SixScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("Sorry,No routes found!"),
                  ),
                ));
    }
  }
}
