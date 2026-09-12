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

@override
Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green.shade300,
    title: Text('Clip RRect'),
),
body: Center(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(21),
       child: Image.asset('assets/Images/nature.jpg', width: 400, height: 200, fit: BoxFit.fill,),
    
    ),
  ),

);}}