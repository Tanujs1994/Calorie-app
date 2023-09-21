import 'package:flutter/material.dart';

class MyDishItemCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final String cardSubtitle;
  const MyDishItemCard({super.key, required this.imagePath, required this.cardTitle, required this.cardSubtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: ListTile(
              leading: Image.asset(imagePath, width:90,),
              title: Text(cardTitle),
              subtitle: Text('$cardSubtitle'),
            ),
          );
  }
}