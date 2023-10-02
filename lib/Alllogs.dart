// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/all_logs_card_item.dart';
import 'package:flutter_application_1/record.dart';
import 'package:intl/intl.dart';

class TanujallLogs extends StatefulWidget {
  const TanujallLogs({super.key});

  @override
  State<TanujallLogs> createState() => _TanujallLogsState();
}

class _TanujallLogsState extends State<TanujallLogs> {
  List<AllLogsCardItems> dataforscreen = [];
  List<String> uniquedates = [];

  getdatafromserver() {
    var db = FirebaseFirestore.instance;
    db.collection('Meals').snapshots().listen((value) {
      for (var doc in value.docs) {
        //print('${doc.id} -> ${doc.data()}');
        uniquedates.add(doc.id);
      }
      print('$uniquedates');
      List<AllLogsCardItems> locallist = [];
      for (var eachday in uniquedates) {
        db.collection('Meals').doc(eachday).collection('Logs').get().then(
          (querySnapshot) {
            for (var docSnapshot in querySnapshot.docs) {
              print('${docSnapshot.id} => ${docSnapshot.data()}');
            }
            locallist.add(
              AllLogsCardItems(
                breakfast: [],
                lunch: [],
                teabreak: [],
                dinner: [],
                date: eachday,
              ),
            );
          },
        );
      }
      setState(() {
        dataforscreen = locallist;
      });
    }, onError: (e) {
      print('line 26 ${e}');
    });
  }

  initState() {
    super.initState();

    getdatafromserver();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            'Records',
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: dataforscreen.length,
                itemBuilder: (ctx, idx) {
                  return Text(dataforscreen[idx].date);
                }),
          )
        ],
      ),
    );
  }
}
