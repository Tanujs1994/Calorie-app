import 'dart:ffi';

class LogFood {
  Int calorie;
  Int gram;
  String mealName;
  String takenAt;

  LogFood(
      {required this.gram,
      required this.calorie,
      required this.mealName,
      required this.takenAt});
}
