import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_detail.dart';

class MyDishItemCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final bool isVegeterian;
  final int index;

  const MyDishItemCard(
      {super.key,
      required this.imagePath,
      required this.cardTitle,
      required this.index,
      required this.isVegeterian});

  @override
  Widget build(BuildContext context) {
    if (isVegeterian == true) {
      return Material(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailPage(
                  imagePath: imagePath,
                  cardTitle: cardTitle,
                  isVegeterian: isVegeterian,
                  index: index,
                ),
              ),
            );
          },
          child: Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  imagePath,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(cardTitle),
              subtitle: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    ' VEG',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Material(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodDetailPage(
                    imagePath: imagePath,
                    cardTitle: cardTitle,
                    isVegeterian: isVegeterian,
                    index: index),
              ),
            );
          },
          child: Card(
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    imagePath,
                    width: 90,
                    fit: BoxFit.cover,
                  )),
              title: Text(cardTitle),
              subtitle: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    ' NONVEG',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
