import 'package:flutter/material.dart';
import 'package:flutter_application_1/dishlist.dart';

class TanujSearchFood extends StatelessWidget {
  const TanujSearchFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('Search Food', style: TextStyle(fontSize: 34,
            fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              labelText: 'Search you food',labelStyle: const TextStyle(fontSize: 12),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder:  OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
                  ),
          ),
          TanujDishList(),
        ],
         
      ),
    );
  }
}