import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome',
        style: TextStyle(fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey
        ),),
      ),
    );
  }

}