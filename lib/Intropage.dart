// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('MY Food')),
        backgroundColor: Colors.white,

      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Log your food',
            style: TextStyle(fontSize: 34,
            fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
            color: Colors.orangeAccent),
            ),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2,
                  
            children: [
              Card(
                child: Image.asset('assets/images/breakfast.jpg'),
              ),
              Card(
                child: Image.asset('assets/images/lunch.jpg',fit: BoxFit.cover),
              ),
              Card(
                child: Image.asset('assets/images/teabreak.jpg'),
              ),
              Card(
                child: Image.asset('assets/images/dinner.jpg'),
              ),
                
                
            ],
            
            ),
          ),
        ],
      ),
           
      
      
    );
  }

}