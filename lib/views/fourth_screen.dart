import 'package:first_flutter_project/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FourthScreen extends StatefulWidget {
  // const FourthScreen({super.key});
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>( 
      builder: (context, user_name, child) => SafeArea(
        child: Scaffold(
          body: Container(
              child: Column(
            children: [
              Text(user_name.userName),
              ElevatedButton(
                  onPressed: () {
                    user_name.changeName("Mya Mya");
                  },
                  child: const Text("Change Name Mya Mya")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/fifth");
                  },
                  child: const Text("Go To Fifth Screen"))
            ],
          )),
        ),
      ),
    );
  }
}
