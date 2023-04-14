import 'package:first_flutter_project/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      //This is user For Provider
      builder: (context, user_name, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Text(user_name.userName),
              ElevatedButton(
                  onPressed: () {
                    user_name.changeName("Aye Aye");
                  },
                  child: const Text(("Change To Aye Aye"))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/fourth");
                  },
                  child: const Text(("Go To Fourth Screen"))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/six");
                  },
                  child: const Text(("Go To Sixth Screen")))
            ],
          ),
        ),
      ),
    );
  }
}
