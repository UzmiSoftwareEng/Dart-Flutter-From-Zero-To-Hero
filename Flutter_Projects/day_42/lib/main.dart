import 'package:flutter/material.dart';

void main() {
  runApp( Intropage());
}

class Intropage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: Intropage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int _counter = 0;

void _incrementCounter() {
setState(() {
_counter++;
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.cyan,
title: Text('Flutter Developer'),
),
 body: Text('Hello Everyone')
);}}