import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String season;
  final Key? key;

  Detail({required this.season, this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(season)),
    );
  }
}
