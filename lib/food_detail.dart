import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final bool isVegeterian;
  final int index;
  FoodDetailPage(
      {super.key,
      required this.imagePath,
      required this.cardTitle,
      required this.isVegeterian,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(cardTitle),
        ),
        body: Column(
          children: [
            Hero(
              tag: "background" + index.toString(),
              child: Image.network(imagePath),
            ),
            Text(
              cardTitle,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isVegeterian)
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  )
                else 
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                  if (isVegeterian)
                Text(
                  ' VEG',
                  style: TextStyle(color: Colors.green),
                )
                else
                Text(' NONVEG',style: TextStyle(color: Colors.red),)
              ],
            )
          ],
        ));
  }
}


