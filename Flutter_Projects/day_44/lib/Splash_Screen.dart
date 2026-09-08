import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_in_flutter/main.dart';

class SplashScreen extends StatefulWidget {
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => DashBoardScreen(),
          ));
    });
  }
  @override
  Widget build(BuildContext context){
   return Scaffold(
     body: Container(
       color: Colors.pink.shade300,
       child: Center(child: Text("Flutter Developers", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),)),
     ),
   );
  }
}