// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TanujCalorielLogCard extends StatelessWidget {
  final String Date;
  final int EatenInBreakfast;
  final int EatenInLunch;
  final int EatenInDinner;
  const TanujCalorielLogCard({super.key, required this.Date, required this.EatenInBreakfast, required this.EatenInLunch, required this.EatenInDinner});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.blueGrey,
      elevation: 25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$Date'),
            SizedBox(
              height: 5,
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('BREAKFAST -'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('$EatenInBreakfast kcal'),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('LUNCH -'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('$EatenInLunch kcal'),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('DINNER -'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(EatenInDinner.toString() + " kcal"),
                  ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}