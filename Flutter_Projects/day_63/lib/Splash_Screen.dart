import 'dart:async';

import 'package:display_logo_on_splash_screen/Home_Page.dart';

import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();

    Timer(
      Duration(seconds: 3), (){

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )
      );
    }
    );
        }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Container(
         width: 200,
           height: 200,
           child: Image.asset('assets/Images/logo.jpg'),
       ),
     )
   );
  }
}