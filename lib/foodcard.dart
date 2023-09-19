import 'package:flutter/material.dart';
import 'package:flutter_application_1/toptobottomGradient.dart';

class Tanujfoodcard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  const Tanujfoodcard({super.key, required this.imagePath, required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
                  elevation: 25,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Stack(children:[
                    ClipRRect(borderRadius: BorderRadius.all(Radius.circular(30)),child: Image.asset('$imagePath')),
                    
                    Mygradient(),
                    Container(alignment: Alignment.bottomCenter,
                    child: Text(cardTitle,style: TextStyle(fontSize: 16, color: Colors.white))),
                  
                  ] ),
                ),
    );
  }
}