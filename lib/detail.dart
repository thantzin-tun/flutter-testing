import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String season;
  final String photo;
  final Key? key;

  Detail(
      {required this.season,
      required this.photo,
      this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [ 
             Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/$photo.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 400,
                    ),
                  ],
                ),
              ),
          
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 35,
                    color: Colors.white,
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 550,
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))
                    // color: Colors.deepOrangeAccent
                    ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Friday Night"),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Choose Your Collection",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                season,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.pink[200]),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_pound, color: Colors.black),
                              SizedBox(width: 3),
                              Text('4.5',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w600)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Shipping and Returns"), Icon(Icons.add)],
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Details"), Icon(Icons.add)],
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Shipping and Returns"), Icon(Icons.add)],
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(1, 1),
                                  ),
                                ]),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add, color: Colors.pink[200]),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink[200]),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.card_giftcard, color: Colors.white),
                                  SizedBox(width: 15),
                                  Text("Add  to Basket",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))
                                ]),
                          )),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                          decoration: const BoxDecoration(color: Colors.black),
                          padding: const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: const Center(
                              child: Text(
                            "Thank for your purchasing",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          )))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

