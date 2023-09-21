// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/all_dish_list.dart';
import 'package:flutter_application_1/dishitem.dart';

class TanujDishList extends StatefulWidget {

  const TanujDishList({super.key});

  @override
  State<TanujDishList> createState() => _TanujDishListState();
}

class _TanujDishListState extends State<TanujDishList> {

  List<Dish> availableDishes = allDishes;
  List<Dish> filteredItems = allDishes;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: (context, index){
            return MyDishItemCard(imagePath: filteredItems[index].url,
             cardTitle: filteredItems[index].name, isVeg: filteredItems[index].isVeg,
             );
        },
      ),
    );
  }
}
