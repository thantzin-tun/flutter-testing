import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        elevation: 0.0,
        title: const Text("Other Item"),
      ),
      body: const Center(
        child: Text("Welcome to Second Screen Page"),
      ),
    );
  }
}