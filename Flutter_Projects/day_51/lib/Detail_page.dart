import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Detail Page'),
       backgroundColor: Colors.orange,
     ),
     body: Center(
       child: Container(
         child: Hero(tag: 'background',
             child: Image.asset('assets/Images/nature.jpg'))
         ),
     ),
   );
  }
}