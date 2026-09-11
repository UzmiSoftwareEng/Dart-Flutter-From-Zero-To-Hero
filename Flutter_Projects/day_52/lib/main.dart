import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home:  MyHomePage(title: 'Flutter Demo'),
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
   var arrIndex = [
     1,2,3,4,5,6,7,8
   ];

@override
Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     backgroundColor: Colors.green.shade300,
     title: Text('3D List'),
),
body: Center(
  child: ListWheelScrollView(
    itemExtent: 100,
    children:
       arrIndex.map((value) => Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(21),
             color: Colors.orange,
           ),
           width: double.infinity,

         child: Text('$value', style: TextStyle(fontSize: 30, color: Colors.white),),
              ),
       )).toList(),
     ),
),
);
}}