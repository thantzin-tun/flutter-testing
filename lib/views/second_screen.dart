import 'package:first_flutter_project/model/city/city_data.dart';
import 'package:first_flutter_project/model/employee/employee_data.dart';
import 'package:first_flutter_project/views/third_screen.dart';
import 'package:flutter/material.dart';
import "dart:convert";

import 'package:flutter/services.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  Future<String> _loadJsonFromAsset(String assetPath) async {
  return await rootBundle.loadString(assetPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        elevation: 0.0,
        title: const Text("Other Item"),
      ),
      body: Center(
          child: Row(
        children: [
          TextButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text("Go to Third Screen")),
          TextButton(
              onPressed: () async {

                  var employeeData = await _loadJsonFromAsset("assets/data/data.json");
                  Employee employee = Employee.fromJson(json.decode(employeeData));

                  var cityData = await _loadJsonFromAsset("assets/data/dataOne.json");
                  City city = City.fromJson(json.decode(cityData));

                  print(employee.toJson());
                 
              },
              child: const Text("Json From Data"))
        ],
      )),
    );
  }
}



