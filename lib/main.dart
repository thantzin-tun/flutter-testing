import 'package:first_flutter_project/first_screen.dart';
import 'package:first_flutter_project/routes/constantRoutes.dart';
import 'package:first_flutter_project/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MyRouter.generateRoute,
        initialRoute: "/",
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            leading: const Icon(Icons.menu, color: Colors.black),
            toolbarHeight: 70.0,
            elevation: 0,
            backgroundColor: Colors.grey[200],
            actions: [
              Container(
                width: 40.0,
                height: 40.0,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.search,
                    color: Colors.pink[200],
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            height: 70,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ],
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationIcon(Icons.home, isSelected: true),
                NavigationIcon(Icons.person),
                NavigationIcon(Icons.heart_broken_sharp),
                NavigationIcon(Icons.settings),
                NavigationIcon(Icons.card_travel),
              ],
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 5),
              Row(
                children: const [
                  SizedBox(width: 10),
                  Text("Shop", style: TextStyle(fontSize: 26)),
                  SizedBox(width: 10),
                  Text("Anthropologie",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customButton("Home Decor", isSelected: true),
                  const SizedBox(width: 10),
                  customButton("Bath & Body"),
                  const SizedBox(width: 10),
                  customButton("Beauty"),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                      ]),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Title("Candels", isSelected: true),
                            Title("Vases"),
                            Title("bins"),
                            Title("Floral"),
                            Title("Decor"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              Card("Summer", "one", context),
                              const SizedBox(width: 15),
                              Card("Rainy", "two", context),
                              const SizedBox(width: 15),
                              Card("Winter", "three", context),
                              const SizedBox(width: 15),
                              Card("Beautiful Night", "four", context),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                            height: 5,
                            width: 400,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 5,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Holiday Special",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.pink[200],
                                    padding: const EdgeInsets.all(15.0)),
                                onPressed: () {
                                  print("View all button is clicking");
                                },
                                child: const Text(
                                  "View All",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child:
                                          Image.asset("assets/images/one.jpg")),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("For Beautiful Girl"),
                                        SizedBox(height: 10.0),
                                        Text("Summer Collections",
                                            style: TextStyle(fontSize: 10.0)),
                                        Spacer(),
                                        Icon(
                                          Icons.sunny_snowing,
                                          color: Colors.redAccent,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const FirstScreen(),
                              ),
                            );
                          },
                          child: Text("Go to FirstScreen"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(20),
                              foregroundColor: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Column Card(String text, String image, BuildContext context) {
    return Column(
      children: [
        Container(
          width: 180,
          height: 280,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/${image}.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.photo,
              color: Colors.yellow,
            ),
            const SizedBox(width: 10),
            Text(text, style: const TextStyle(fontSize: 15.0))
          ],
        )
      ],
    );
  }

  Container NavigationIcon(IconData icon, {bool isSelected = false}) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.pink[200] : Colors.grey[200],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(icon,
            color: isSelected ? Colors.white : Colors.black, size: 25),
      ),
    );
  }

  Column Title(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(text,
            style: TextStyle(color: isSelected ? Colors.black : Colors.grey)),
        const SizedBox(height: 7),
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white,
              shape: BoxShape.circle),
        )
      ],
    );
  }

  TextButton customButton(String text, {bool isSelected = false}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        backgroundColor: isSelected ? Colors.pink[200] : Colors.grey[300],
        padding: const EdgeInsets.all(15),
      ),
      child: Text(text,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, fontSize: 15.0)),
    );
  }
}
