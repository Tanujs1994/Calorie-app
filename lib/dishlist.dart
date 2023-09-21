// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dishitem.dart';

class TanujDishList extends StatelessWidget {
  const TanujDishList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView(
        children: [
          const MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          cardTitle: 'Shahi Paneer', 
          cardSubtitle: 'Paneer'),

          const MyDishItemCard(imagePath: 'assets/images/matarpaneer.jpg' , 
          cardTitle: ('Matar Paneer'), 
          cardSubtitle: 'Paneer'),

          MyDishItemCard(imagePath: 'assets/images/kadhaipaneer.jpg' , 
          cardTitle: 'Kadhai Paneer', 
          cardSubtitle: 'Paneer'),

          MyDishItemCard(imagePath: 'assets/images/chole.jpg' , 
          cardTitle: 'Chole', 
          cardSubtitle: 'Vegetable'),

          MyDishItemCard(imagePath: 'assets/images/mixveg.jpg' , 
          cardTitle: 'Mix Veg', 
          cardSubtitle: 'Vegetable'),

          MyDishItemCard(imagePath: 'assets/images/kadipakodi.jpg' , 
          cardTitle: 'Kadi Pakodi', 
          cardSubtitle: 'Kadi'),

          //  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),

          //  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),

          //  MyDishItemCard(imagePath: 'assets/images/shahipaneer.jpg' , 
          // cardTitle: 'Shahi Paneer', 
          // cardSubtitle: 'Paneer'),
         
          // Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/mixveg.jpg'),
          //     title: Text('Mix Veg'),
          //     subtitle: Text('vegetable'),
          //   ),
          // ),
          //  Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/chole.jpg'),
          //     title: Text('Chole'),
          //     subtitle: Text('vegetable'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kadhaipaneer.jpg'),
          //     title: Text('Kadhai Paneer'),
          //     subtitle: Text('Paneer'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kadipakodi.jpg'),
          //     title: Text('Kadi Pakodi'),
          //     subtitle: Text('Kadi'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/kheerarayta.jpg'),
          //     title: Text('Kheera Rayta'),
          //     subtitle: Text('Rayta'),
          //   ),
          // ),
          //   Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/planechawal.jpg'),
          //     title: Text('Plane Chawal'),
          //     subtitle: Text('Chawal'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: Image.asset('assets/images/rajma.jpg'),
          //     title: Text('Rajma'),
          //     subtitle: Text('Sabji'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
