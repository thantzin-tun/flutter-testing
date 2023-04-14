import 'package:first_flutter_project/bloc/product/product_bloc.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class SixScreen extends StatefulWidget {
  const SixScreen({super.key});

  @override
  State<SixScreen> createState() => _SixScreenState();
}

class _SixScreenState extends State<SixScreen> {
  final ProductBloc productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      bloc: productBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          drawer: const Drawer(
            child: Text(("Drawer")),
          ),
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            ),
            title: Text("Shopping"),
            backgroundColor: Colors.teal,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    productBloc.add(shoppingCardClickEvent());
                  },
                  icon: const Icon(
                    Icons.shopping_basket,
                    size: 30,
                  )),
              const SizedBox(width: 5),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("New activities",
                                  style: TextStyle(fontSize: 18)),
                              content: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.teal),
                                    onPressed: () {
                                      print("good button is clicking");
                                    },
                                    child: const Text("Add",
                                        style: TextStyle(color: Colors.white))),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.red),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Back",
                                        style: TextStyle(color: Colors.white))),
                              ],
                            ));
                  },
                  icon: const Icon(
                    Icons.list_alt_rounded,
                    size: 30,
                  ))
            ],
          ),
          body: GridView(
            padding: const EdgeInsets.all(5),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300.0,
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 8),
            children: [
              Card(
                elevation: 2,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/girl.jpg',
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity),
                      const SizedBox(height: 5),
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          maxWidth: double.infinity,
                          minHeight: 0,
                          maxHeight: double.infinity,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text("Men Jackets"),
                            ElevatedButton(onPressed: (){
                                print("Add to Cart");
                            }, child: const Text("Add to Cart"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(elevation: 2, child: Container(color: Colors.black)),
            ],
          ),
        );
      },
    );
  }
}
