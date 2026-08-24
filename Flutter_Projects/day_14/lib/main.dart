import 'package:flutter/material.dart';

void main() {
  runApp(DecoretionApp());
}

class DecoretionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: ContainerDecorationApp(),
   ); //MaterialApp
  }
}

class ContainerDecorationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Page"),
        backgroundColor: Colors.pink,
      ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightBlue.shade100,
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
           // borderRadius: BorderRadius.only(topRight: Radius.circular(15),  bottomLeft: Radius.circular(15),),
              border: Border.all(
              width: 5,
              color: Colors.black,
          ),
              boxShadow: [
                BoxShadow(
              blurRadius: 15,
                  //spreadRadius: 7,
          )
              ],
            shape: BoxShape.circle
        ),
      ), //Container
    ),
    ),//Container
); //Scaffold
}
}