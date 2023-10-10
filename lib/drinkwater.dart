import 'package:flutter/material.dart';

class DrinkWater extends StatelessWidget {
  const DrinkWater({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 2,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: 2,
              color: Colors.black,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 198,
                  width: 1,
                ),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            Container(
              height: 200,
              width: 2,
              color: Colors.black,
            ),
            Container(
              width: 50,
              height: 2,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
