// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Alllogs.dart';
import 'package:flutter_application_1/Searchfood.dart';
import 'package:flutter_application_1/homepage.dart';

class IntroPage extends StatefulWidget{
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int myIndex = 0;
  final tabs = [
    MyHomePage(),
    TanujSearchFood(),
    TanujallLogs(),
    
  ];
  List<Widget> widgetList = const [
   
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
     bottomNavigationBar:  BottomNavigationBar(
      onTap: (index) {
        setState(() {
          myIndex= index;
        });
        
      },
      selectedItemColor: Colors.orangeAccent,
      
      currentIndex: myIndex,
      items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label:'Search', ),
              BottomNavigationBarItem(icon: Icon(Icons.description_outlined), label: 'All Logs'),
            ] ) ,
      body: SafeArea(child: tabs[myIndex]),
      
           
      
      
    );
  }
}