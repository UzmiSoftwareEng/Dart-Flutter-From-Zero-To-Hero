import 'package:flutter/material.dart';
import 'package:splash_screen_in_flutter/IntroScreen.dart';
import 'package:splash_screen_in_flutter/Splash_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: SplashScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    }
    );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Text("Login Page", style: TextStyle(fontSize: 21, color: Colors.white),),
        ),
      )

    );
  }
}
