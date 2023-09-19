// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/foodcard.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/toptobottomGradient.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MY Calorie')),
        backgroundColor: Colors.white,

      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Log your food',
            style: TextStyle(fontSize: 34,
            fontWeight: FontWeight.bold,fontFamily: 'FontMain', 
            color: Colors.orangeAccent),
            ),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 12,
                  
            children: [
            Tanujfoodcard(imagePath:'assets/images/breakfast.jpg' , cardTitle:'BREAKFAST' ),
            Tanujfoodcard(imagePath: 'assets/images/lunchh.jpg', cardTitle: 'LUNCH'),
            Tanujfoodcard(imagePath: 'assets/images/teabreak.jpg', cardTitle: 'TEABREAK'),
            Tanujfoodcard(imagePath: 'assets/images/dinner.jpg', cardTitle: 'DINNER'),                
            ],
            
            ),
          ),
        ],
      ),
           
      
      
    );
  }

}