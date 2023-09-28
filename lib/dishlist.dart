// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/all_dish_list.dart';
import 'package:flutter_application_1/dishitem.dart';

class TanujDishList extends StatelessWidget {
  final List<Dish> filteredItems;

  const TanujDishList({super.key, required this.filteredItems});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: 'background' + index.toString(),
            child: MyDishItemCard(
              imagePath: filteredItems[index].url,
              cardTitle: filteredItems[index].name,
              isVegeterian: filteredItems[index].isVeg,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
