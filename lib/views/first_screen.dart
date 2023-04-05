import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Text('Collection'),
      ),
      body: const Center(
        child: Text('Welcome To First Screen Page'),
      ),
    );
  }
}
