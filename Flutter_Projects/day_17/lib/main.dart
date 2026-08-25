import 'package:flutter/material.dart';

void main() {
  runApp( FlutterApp());
}

class FlutterApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MarginApp(),

);
}
}
class MarginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Developer'),
        backgroundColor: Colors.deepOrange,
      ),
      //body: Padding(
       // padding: EdgeInsets.all(20),
        //child: Text('Uzma Mumtaz!!!!',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
      //),
      
      body: Container(
        color: Colors.tealAccent,
        margin: EdgeInsets.all(20),
          child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20, bottom: 15,right: 30),
          child: Text('Uzma Mumtaz!!!!',style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
    );
}
     }