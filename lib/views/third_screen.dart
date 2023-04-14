import 'package:first_flutter_project/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: _ThirdScreen(),
        ),
      ),
    );
  }
}

class _ThirdScreen extends StatefulWidget {
  const _ThirdScreen({super.key});

  @override
  State<_ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<_ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, CounterInitialState>(
      builder: (context, state) {
        return Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      counterBloc.add(IncrementCounter());
                    },
                  child: const Text("Increase")),
                  Text("Counter value is ${state.count > 5 ? 'Odd' : state.count}",style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(DecrementCounter());
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text("Decrease",style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(MultiplicationCounter());
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text("Multiplication",style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 30),
                ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed("/fourth");
                }, child: Text("Go to Fourth Screen"))
              ],
            ),
          ),
        );
      },
    );
  }
}
