import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class SplashScreen extends StatefulWidget{
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){
      super.initState();

      Timer(
      Duration(seconds: 2),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),
       ),
     );
    }
);}

@override
Widget build (BuildContext context){
  return Scaffold(
    body: Center(
      child: Text('Welcome',
      style: TextStyle(fontSize: 21,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      ),),
    ),
  );}
}