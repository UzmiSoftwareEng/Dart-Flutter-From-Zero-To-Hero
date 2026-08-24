import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("FlutterApp"),
      home: DashBoardScreen(),
    ); //
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('DashBoard') ,
    ),

    body: Container(
      color: Colors.blue.shade50,
    ),
  );
 }}


