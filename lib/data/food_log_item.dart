import 'dart:ffi';

class Food {
  Int calorie;
  Int gram;
  String mealName;
  String takenAt;

  Food(
      {required this.gram,
      required this.calorie,
      required this.mealName,
      required this.takenAt});
}
