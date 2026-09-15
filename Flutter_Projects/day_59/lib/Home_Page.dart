import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home')),),
      body: Container(
        color: Colors.pink.shade200,
        child: Center(
            child: Icon(Icons.home, size: 80, color: Colors.white.withOpacity(0.5),)),
      ),
    );
  }

}