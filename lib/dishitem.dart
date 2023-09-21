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
              leading: Image.network(imagePath, width:90,),
              title: Text(cardTitle),
              subtitle: Text('Veg: $isVeg'),
            ),
          );
  }
}