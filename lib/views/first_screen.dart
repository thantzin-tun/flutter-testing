import 'package:first_flutter_project/inject/future_object.dart';
import 'package:flutter/material.dart';

import "package:http/http.dart" as http;

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  // Future<String> loadJsonFromAsset(String assetPath) async {
  //   return await rootBundle.loadString(assetPath);
  // }

  @override
  Widget build(BuildContext context) {
    var _textController = TextEditingController();

    void fetchApi () {    

    }

    return Scaffold(
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
                    icon: Icon(Icons.share_arrival_time),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
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
                                      hintStyle: const TextStyle(fontSize: 15),
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
                            ListView.builder(
                              itemCount: 1,
                              itemBuilder: (BuildContext context,int  index) {
                                  return Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.deepPurple,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                              "assets/images/avatar.jpg"),
                                        ),
                                        const SizedBox(height: 5),
                                        const Text("Myat Noe",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white)),
                                        const SizedBox(height: 5),
                                        const Text("Software Developer",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Colors.white)),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.place,color: Colors.blue),
                                                SizedBox(width: 10),
                                                Text("Yangon",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15,
                                                        color: Colors.white)),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.list,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            );
                              },
                            )
                          ],
                        )),
                    Container(
                      child: const Center(child: Text("Home")),
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
                      child: const Center(child: Text("Arrival")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
