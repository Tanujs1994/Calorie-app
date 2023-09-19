// ignore_for_file: prefer_const_constructors, unused_local_variable, empty_statements, dead_code
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.brown,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.grey,
    
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
    body: GridView.builder( itemBuilder: (context, index) {
      return Container(color:arrColors[index]);
      },itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      ),
      ));
    // body: GridView.count(crossAxisCount: 4,
    // crossAxisSpacing: 11,
    // mainAxisSpacing: 11,
    
    // children: [
    //   Container(color:arrColors[0]),
    //    Container(color:arrColors[1]),
    //     Container(color:arrColors[2]),
    //      Container(color:arrColors[3]),
    //       Container(color:arrColors[4]),
    //        Container(color:arrColors[5]),
    //         Container(color:arrColors[6]),
    //          Container(color:arrColors[7]),
             
    // ],)
    // body: Container(
    //       height: 200,
    //       child: GridView.extent(maxCrossAxisExtent: 100,
    //       crossAxisSpacing: 11,
    //       mainAxisSpacing: 11,
    //       children: [
    //         Container(color:arrColors[0]),
    //          Container(color:arrColors[1]),
    //           Container(color:arrColors[2]),
    //            Container(color:arrColors[3]),
    //             Container(color:arrColors[4]),
    //              Container(color:arrColors[5]),
    //               Container(color:arrColors[6]),
    //                Container(color:arrColors[7]),
            
    //       ],
    //       ),
       
    // ),
    
  }
}
