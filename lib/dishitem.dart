import 'package:flutter/material.dart';

class MyDishItemCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final bool isVeg;
  const MyDishItemCard({super.key, required this.imagePath, required this.cardTitle, required this.isVeg});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: ListTile(
              leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.network(imagePath, width:90,fit: BoxFit.cover,)),
              title: Text(cardTitle),
              subtitle: Row(
                children: [
                 Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.green,),
                ),
                Text(' VEG', style: TextStyle(color: Colors.green),),
                ],
               
              ),
              
            ),
          );

  }
}