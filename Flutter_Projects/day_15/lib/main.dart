import 'package:flutter/material.dart';

void main() {
  runApp(DecoretionApp());
}

class DecoretionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DecorationHomeApp(),
      color: Colors.pink.shade200,
    ); //MaterialApp
  }
}

class DecorationHomeApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Flutter Demo Page"),
backgroundColor: Colors.pink,
),
body: Center(
  child: Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(75),
        border: Border.all(
          color: Colors.black,
          width: 5,
        ),
      boxShadow: [
        BoxShadow (
          color: Colors.grey,
          blurRadius: 100,
  ),
      ],
    ),
  child: Center(
      child: Center(
        child: Text("Hello Ma'am Uzma",
        selectionColor: Colors.white12,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,),
            ),
      ),
    ),
  ),
)
);
  }
 }