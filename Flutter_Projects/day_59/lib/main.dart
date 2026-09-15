import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:real_life_usage_of_shared_pref/main.dart';
import 'package:real_life_usage_of_shared_pref/Home_Page.dart';
import 'package:real_life_usage_of_shared_pref/Login_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blueGrey
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = 'login';

   @override
   void initState(){
     super.initState();

     whereToGo();

   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.purple,
        title: Text('Shared Preferences Login'),
      ),
      body: Container(
       //color: Colors.blueGrey,
)
    );
  }

  void whereToGo() async{

     var sharedPref = await SharedPreferences.getInstance();

     var isLoggedIn = sharedPref.getBool(KEYLOGIN);

       if(isLoggedIn == true) {

           Navigator.pushReplacement(
               context, MaterialPageRoute(
             builder: (context) => HomePage(),));
         }else{

           Navigator.pushReplacement(
               context, MaterialPageRoute(
             builder: (context) => LoginPage(),
           )
           );
       }
  }
}
