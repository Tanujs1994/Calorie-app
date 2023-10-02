// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/record.dart';
import 'package:intl/intl.dart';

class TanujallLogs extends StatefulWidget {
  const TanujallLogs({super.key});

  @override
  State<TanujallLogs> createState() => _TanujallLogsState();
}

class _TanujallLogsState extends State<TanujallLogs> {
  initState() {
    super.initState();
    var db = FirebaseFirestore.instance;
    db.collection('Meals').snapshots().listen((value) {
      print('sucess ${value.docs.length} ${value.toString()}');
      for (var doc in value.docs) {
        print('${doc.id} -> ${doc.data()}');
      }
    }, onError: (e) {
      print("line 26");
      print('${e}');
    });

    // db.collection('Meals').count().get().then((value) {
    //   print('${value.count}');
    // });

    // print('${documents.}')
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Records',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent)),
          SizedBox(
            height: 10,
          ),
          TanujCalorielLogCard(
              Date: '22th Sept 2023',
              EatenInBreakfast: 20,
              EatenInLunch: (68),
              EatenInDinner: (90)),
          SizedBox(
            height: 10,
          ),
          TanujCalorielLogCard(
              Date: '23th Sept 2023',
              EatenInBreakfast: 45,
              EatenInLunch: 76,
              EatenInDinner: 87),
        ],
      ),
    );
  }
}
