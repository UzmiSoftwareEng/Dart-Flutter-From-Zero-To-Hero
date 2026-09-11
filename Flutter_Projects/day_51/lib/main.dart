import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hero_animation/Detail_page.dart';

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
title: Text('Hero Animation'),
),
body: Center(
  child: Container(
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
      },
      child: Hero(
        tag:  'background',
          child: Image.asset('assets/Images/nature.jpg', width: 200, height: 200,)),
    ),
  ),
),
);}}