import'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List data = [
  {
    "image":
        "https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&w=800",
    "name": "chainese maal",
    "like": 2145,
    "comm": 132
  },
  {
    "image":
        "https://images.pexels.com/photos/4753095/pexels-photo-4753095.png?auto=compress&cs=tinysrgb&w=800",
    "name": "american maal",
    "like": 1043,
    "comm": 543
  },
  {
    "image":
        "https://images.pexels.com/photos/1020056/pexels-photo-1020056.jpeg?auto=compress&cs=tinysrgb&w=800",
    "name": "russian maal",
    "like": 3075,
    "comm": 732
  },
  {
    "image":
        "https://images.pexels.com/photos/776552/pexels-photo-776552.jpeg?auto=compress&cs=tinysrgb&w=800",
    "name": "european maal",
    "like": 1042,
    "comm": 321
  },
  {
    "image":
        "https://images.pexels.com/photos/1485031/pexels-photo-1485031.jpeg?auto=compress&cs=tinysrgb&w=800",
    "name": "indian maal",
    "like": 3344,
    "comm": 765
  },
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        title: Text("GIRLS"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(25),
              height: 690,
              color: Colors.black12,
              child: Column(
                children: [
                  Image.network(data[index]["image"]),
                  // SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[index]["name"],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite),
                          Text(
                            data[index]["like"].toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.comment_bank_rounded),
                          Text(
                            data[0]["comm"].toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
      bottomNavigationBar: BottomAppBar(
    child: Row(
      children: [
       
      
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),

        Spacer(),

        IconButton(icon: Icon(Icons.search), onPressed: () {}),

        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),

      ],
    ),
  ),
  floatingActionButton:

      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    
    ),);
  }
}
