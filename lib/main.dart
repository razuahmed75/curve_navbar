// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _zeroIndex = 0;
  List<Widget> widgetList = [
    Container(
      width: 200,
      height: 200,
      color: Colors.green,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.brown,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.white,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.amberAccent,
    ),
  ];
  void changeTheIndex(int index) {
    setState(() {
      _zeroIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Floating Button",
      home: SafeArea(
        // top: false,
        // left: false,
        // bottom: false,
        // right: false,
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("BottomNavBAr"),
            centerTitle: true,
            elevation: 10,
            actions: [
              Icon(Icons.more_vert),
            ],
          ),
          body: widgetList[_zeroIndex],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blue,
            color: Colors.white,
            animationCurve: Curves.easeOut,
            index: _zeroIndex,
            onTap: changeTheIndex, // onTap: (){changeTheIndex();},
            items: [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.person),
              Icon(Icons.upload),
              Icon(Icons.favorite_border),
            ],
          ),
        ),
      ),
    );
  }
}
