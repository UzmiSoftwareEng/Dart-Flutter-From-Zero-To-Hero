import 'package:flutter/material.dart';

void main() {
  runApp( MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ), //
      home: DashBoardScreen(),
    ); //
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Everyone'),
        backgroundColor: Colors.lightGreen,
      ), //
      body: Center(
        child: Card(
          elevation: 15,
          shadowColor: Colors.orange,
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Uzma Mumtaz',
            style: TextStyle(fontSize: 21),),
        )),
      ),
); //
  }
}