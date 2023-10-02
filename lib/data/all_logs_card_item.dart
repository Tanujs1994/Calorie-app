import 'package:flutter_application_1/data/food_log_item.dart';

class AllLogsCardItems {
  String date;
  List<LogFood> breakfast;
  List<LogFood> lunch;
  List<LogFood> teabreak;
  List<LogFood> dinner;

  AllLogsCardItems(
      {required this.breakfast,
      required this.lunch,
      required this.teabreak,
      required this.dinner,
      required this.date});
}
