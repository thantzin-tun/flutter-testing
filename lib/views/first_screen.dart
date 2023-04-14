import 'dart:ui';

import 'package:first_flutter_project/api/product_data.dart';
import 'package:first_flutter_project/bloc/colorBloc/color_bloc.dart';
import 'package:first_flutter_project/inject/future_object.dart';
import 'package:first_flutter_project/model/product/product_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final ProductApiCaller _productApiCaller = ProductApiCaller();

  @override
  void initState() {
    super.initState();
  }


  Future<String> loadJsonFromAsset(String assetPath) async {
    return await rootBundle.loadString(assetPath);
  }

  @override
  Widget build(BuildContext context) {

    var _textController = TextEditingController();
    // final ColorBloc changeColorBloc = BlocProvider.of<ColorBloc>(context);
    return BlocProvider(
      create: (context) => ColorBloc(),
      ///This is inject Bloc Provider for single
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.black,
            title: const Text('Girl Collections'),
          ),
          body: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                const TabBar(
                  indicatorColor: Colors.deepPurple,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.deepPurple,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.person_2),
                    ),
                    Tab(
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      icon: Icon(Icons.phone_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.verified_user),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        )
                                      ]),
                                  child: TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: const Icon(Icons.search,
                                            color: Colors.black),
                                        hintText: "Search users",
                                        hintStyle:
                                            const TextStyle(fontSize: 15),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              _textController.clear();
                                            },
                                            icon: const Icon(Icons.clear))),
                                    onChanged: (value) {
                                      _textController.text = value;
                                    },
                                  )),
                              const SizedBox(height: 20),
                              // ListView.builder(
                              //   itemCount: 1,
                              //   itemBuilder: (BuildContext context,int  index) {
                              //       return Container(
                              //   padding: const EdgeInsets.all(15),
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(15),
                              //       color: Colors.deepPurple,
                              //       boxShadow: [
                              //         BoxShadow(
                              //           color: Colors.grey.withOpacity(0.5),
                              //           spreadRadius: 3,
                              //           blurRadius: 5,
                              //           offset: const Offset(0, 3),
                              //         )
                              //       ]),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: [
                              //       Container(
                              //         child: Column(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             const CircleAvatar(
                              //               radius: 30.0,
                              //               backgroundImage: AssetImage(
                              //                   "assets/images/avatar.jpg"),
                              //             ),
                              //             const SizedBox(height: 5),
                              //             const Text("Myat Noe",
                              //                 style: TextStyle(
                              //                     fontWeight: FontWeight.w700,
                              //                     color: Colors.white)),
                              //             const SizedBox(height: 5),
                              //             const Text("Software Developer",
                              //                 style: TextStyle(
                              //                     fontWeight: FontWeight.w700,
                              //                     fontSize: 15,
                              //                     color: Colors.white)),
                              //             const SizedBox(height: 20),
                              //             Row(
                              //               children: [
                              //                 Row(
                              //                   children: [
                              //                     Icon(Icons.place,color: Colors.blue),
                              //                     SizedBox(width: 10),
                              //                     Text("Yangon",
                              //                         style: TextStyle(
                              //                             fontWeight:
                              //                                 FontWeight.w700,
                              //                             fontSize: 15,
                              //                             color: Colors.white)),
                              //                   ],
                              //                 )
                              //               ],
                              //             )
                              //           ],
                              //         ),
                              //       ),
                              //       const Icon(
                              //         Icons.list,
                              //         color: Colors.white,
                              //       )
                              //     ],
                              //   ),
                              // );
                              //   },
                              // )
                            ],
                          )),
                      BlocBuilder<ColorBloc, ColorState>(
                        builder: (context, state) {
                          Color? color;
                          if (state is ChangeColorState) {
                            color = state.color;
                          }
                          return Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        BlocProvider.of<ColorBloc>(context).add(
                                            ChangeColorEvent(
                                                color: Colors.red));
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.red),
                                      child: const Text("Change Red",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          BlocProvider.of<ColorBloc>(context)
                                              .add(ChangeColorEvent(
                                                  color: Colors.blue));
                                        },
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.blue),
                                        child: const Text("Change Blue",
                                            style: TextStyle(
                                                color: Colors.white))),
                                    TextButton(
                                        onPressed: () {
                                          BlocProvider.of<ColorBloc>(context)
                                              .add(ChangeColorEvent(
                                                  color: Colors.green));
                                        },
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.green),
                                        child: const Text("Change Green",
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {
                                      BlocProvider.of<ColorBloc>(context)
                                          .add(ChangOriginalColor());
                                    },
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey),
                                    child: const Text("Change Original Color",
                                        style: TextStyle(color: Colors.white))),
                                const SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  height: 480,
                                  color: color,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: FutureBuilder<Person>(
                            future: FutureObject().getPerson,
                            builder: (BuildContext context,
                                AsyncSnapshot<Person> snapshot) {
                              if (snapshot.hasData) {
                                return ListView(
                                  children: [
                                    Card(
                                      elevation: 2,
                                      child: ListTile(
                                        title: const Text("U Maung Maung",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16)),
                                        subtitle: const Text("09941591844",
                                            style: TextStyle(fontSize: 13)),
                                        leading: const CircleAvatar(
                                          child: Text("T"),
                                          backgroundColor: Colors.green,
                                        ),
                                        trailing: Icon(Icons.phone,
                                            color: Colors.pink[200]),
                                      ),
                                    ),
                                  ],
                                );
                              } else if (snapshot.hasError) {
                                return const Center(child: Text("Error"));
                              } else {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }),
                      ),
                      Container(
                          padding: const EdgeInsets.all(15),
                          width: double.infinity,
                          child: FutureBuilder<List<Product>>(
                            future: _productApiCaller.getProduct(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final products = snapshot.data!;
                                return ListView.builder(
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(products, index);
                                  },
                                );
                              } else if (snapshot.hasError) {
                                return Text("The error is $snapshot.hasError");
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator(
                                        color: Colors.black));
                              }
                            },
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  GestureDetector ProductCard(List<Product> products, int index) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => (AlertDialog(
                  contentPadding: EdgeInsets.all(5),
                  content: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.network(
                            products[index].image,
                            fit: BoxFit.cover,
                            width: 200,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(products[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              ElevatedButton(
                                  onPressed: () {},
                                  child:
                                      Text("Price: ${products[index].price}")),
                              const SizedBox(height: 5),
                              Text(
                                products[index].description,
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )));
      },
      child: Card(
        child: ListTile(
          title:
              Text(products[index].title, style: const TextStyle(fontSize: 15)),
          hoverColor: Colors.amber,
          subtitle: Text("Price ${products[index].price.toString()}"),
          leading: Image.network(products[index].image),
        ),
      ),
    );
  }
}
