// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Alllogs.dart';
import 'package:flutter_application_1/Searchfood.dart';
import 'package:flutter_application_1/drinkwater.dart';
import 'package:flutter_application_1/homepage.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int myIndex = 0;
  final tabs = [
    MyHomePage(),
    TanujSearchFood(),
    TanujallLogs(),
    DrinkWater(),
  ];
  List<Widget> widgetList = const [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black54,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          selectedItemColor: Colors.orangeAccent,
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'All Logs',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.water_drop), label: 'Water'),
          ]),
      body: SafeArea(child: tabs[myIndex]),
    );
  }
}
