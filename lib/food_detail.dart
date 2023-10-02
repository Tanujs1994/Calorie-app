import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class FoodDetailPage extends StatefulWidget {
  final String imagePath;
  final String cardTitle;
  final bool isVegeterian;
  final int index;
  FoodDetailPage(
      {super.key,
      required this.imagePath,
      required this.cardTitle,
      required this.isVegeterian,
      required this.index});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  String valueChoosen = "BREAKFAST";
  List<String> listItem = ["BREAKFAST", "LUNCH", "TEABREAK", "DINNER"];
  var kcalEaten = 0;
  var gmEaten = 0;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('dd-MMMM-yyyy');
    var formattedDate = formatter.format(now);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.cardTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: "background" + widget.index.toString(),
                child: Image.network(widget.imagePath),
              ),
              Center(
                child: Text(
                  widget.cardTitle,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.isVegeterian)
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    )
                  else
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  if (widget.isVegeterian)
                    Text(
                      ' VEG',
                      style: TextStyle(color: Colors.green),
                    )
                  else
                    Text(
                      ' NONVEG',
                      style: TextStyle(color: Colors.red),
                    )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: TextField(
                  onChanged: (value) {
                    print('value $value gm');
                    gmEaten = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'gm',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: TextField(
                  onChanged: (value) {
                    print("value $value kcal");
                    kcalEaten = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'kcal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: DropdownButton<String>(
                    value: valueChoosen,
                    onChanged: (newValue) {
                      setState(() {
                        valueChoosen = newValue!;
                      });
                    },
                    items: listItem.map((String e) {
                      return DropdownMenuItem<String>(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(e),
                        ),
                        value: e,
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('${widget.cardTitle}');
                      print(formattedDate);
                      print("$kcalEaten");
                      print('$gmEaten');
                      print('$valueChoosen');
                      var documentRef = FirebaseFirestore.instance
                          .collection('Meals')
                          .doc(formattedDate);
                      documentRef.set({
                        "updated at": DateTime.now().microsecondsSinceEpoch
                      });

                      documentRef
                          .collection('Logs')
                          .doc(DateTime.now().microsecondsSinceEpoch.toString())
                          .set({
                        "Meal Name": widget.cardTitle,
                        "Taken At": valueChoosen,
                        "Time": formattedDate,
                        "Calorie": kcalEaten,
                        "Gram": gmEaten,
                      });
                      Fluttertoast.showToast(msg: "Data sucessfully added");
                    },
                    child: Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
