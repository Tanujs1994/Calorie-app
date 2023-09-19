import 'package:flutter/material.dart';
import 'package:flutter_application_1/foodcard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
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
                  
            children: const [
            Tanujfoodcard(imagePath:'assets/images/breakfast.jpg' , cardTitle:'BREAKFAST' ),
            Tanujfoodcard(imagePath: 'assets/images/lunchh.jpg', cardTitle: 'LUNCH'),
            Tanujfoodcard(imagePath: 'assets/images/teabreak.jpg', cardTitle: 'TEABREAK'),
            Tanujfoodcard(imagePath: 'assets/images/dinner.jpg', cardTitle: 'DINNER'),
           
            ],
            
            ),
          ),
        ],
      );
  }
}