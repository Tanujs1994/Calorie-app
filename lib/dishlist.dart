// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TanujDishItem extends StatelessWidget {
  const TanujDishItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
           Card(
            child: ClipRRect(child: Image.asset('assets/images/shahipaneer.jpg')),
          ),
           Card(
            child: Image.asset('assets/images/shahipaneer.jpg'),
          ),
           Card(
            child: Image.asset('assets/images/shahipaneer.jpg'),
          )
        ],
      ),
    );
  }
}
