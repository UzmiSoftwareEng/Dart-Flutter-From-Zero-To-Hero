import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('logo'),
          backgroundColor: Colors.blue,

), //
  body:  Center(
    child: Container(
      child: Image(
      image: AssetImage('image/logo.png'),
      width: 300,
      height: 300,
      ),
    ),
  )
      )
    );
}}
