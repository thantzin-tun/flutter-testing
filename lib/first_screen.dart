import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Helllo",
        home: Container(
          child: Text("Welcome to first_screen page"),
        ),
    );
  }
}