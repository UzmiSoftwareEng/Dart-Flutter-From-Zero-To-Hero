import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool isFirst = true;

@override
  void initState() {
  // TODO: implement initState
  super.initState();
}

  void reload(){
    setState((){
      if(isFirst){
    isFirst = false;
      } else {
        isFirst = true;
      }
  });
}

@override
Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     backgroundColor: Colors.green.shade300,
     title: Text('Cross FADE Animation'),
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      AnimatedCrossFade(
        duration: Duration (seconds: 2),
          firstChild: Container(
            width: 200,
            height: 150,
            color: Colors.orange,
          ),
          secondChild: Image.asset('Image/nature.jpg', width: 200, height: 200,),
        sizeCurve: Curves.slowMiddle,
        firstCurve: Curves.bounceIn,
        secondCurve: Curves.bounceInOut,
        crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
      ElevatedButton(
        onPressed: (){
          reload();
      }, child: Text('Click'))
    ],
  ),
),);
  }
}