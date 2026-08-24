import 'package:flutter/material.dart';

void main() {
  runApp(DecoretionApp());
}

class DecoretionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpendedWidgetApp(),
      color: Colors.pink.shade200,
    ); //MaterialApp
  }
}

class ExpendedWidgetApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Flutter Demo Page"),
backgroundColor: Colors.blue,
),
body: Container(
  width: double.infinity,
  height: double.infinity,
child: Row(
  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(
      flex: 2,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.tealAccent,
      
      ),
    ),
  Expanded(
    flex: 3,
    child: Container(
      width: 100,
      height: 100,
      color: Colors.purple,
    ),
  ),
    Expanded(
      flex: 1,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.lightBlue,
      ),
    ),
    Expanded(
      flex: 4,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.deepOrange,
      ),
    ),
],
),
  ),

);
    }
}