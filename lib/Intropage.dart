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
            mainAxisSpacing: 8,
            crossAxisSpacing: 12,
                  
            children: [
              Card(
                elevation: 25,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Stack(children:[
                  ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),child: Image.asset('assets/images/breakfast.jpg')),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text('BREAKFAST',style: TextStyle(fontSize: 22,color: Colors.white),),
                  ),
                ] ),
              ),

              Card(
                elevation: 25,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Stack(children:[
                  ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(30), topRight: Radius.circular(30) ),child: Image.asset('assets/images/lunch.jpg')),
                  Container(alignment: Alignment.bottomCenter,
                  child: Text('LUNCH', style: TextStyle(fontSize: 22, color: Colors.white),))
                ] ),
              ),
              Card(
                elevation: 25,
                child: Stack(children:[
                  ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),child: Image.asset('assets/images/teabreak.jpg')),
                  Container(alignment: Alignment.bottomCenter,
                  child: Text('TEABREAK',style: TextStyle(fontSize: 22, color: Colors.white)))
                ] ),
              ),
              Card(
                elevation: 25,
                child: Stack(children:[
                 ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),child: Image.asset('assets/images/dinner.jpg')),
                 Container(alignment: Alignment.bottomCenter, 
                 child: Text('DINNER',style: TextStyle(fontSize: 22, color: Colors.white)))
                ] 
                ),
              ),
                
                
            ],
            
            ),
          ),
        ],
      ),
           
      
      
    );
  }

}