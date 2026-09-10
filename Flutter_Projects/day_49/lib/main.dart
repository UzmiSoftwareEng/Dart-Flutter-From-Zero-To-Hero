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
   var myOpacity = 1.0;
   bool isVisible = true;

  @override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.green.shade300,
title: Text('FOO Animation'),
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      AnimatedOpacity(
          opacity: myOpacity,
          duration: Duration(seconds: 1),
          curve: Curves.elasticOut,
          child: Container(
            width: 200,
            height: 100,
            color: Colors.orange.shade300,
          ),),
      SizedBox(
        height: 15,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            )
          ),
          onPressed: (){
        setState(() {
          if(isVisible){
          myOpacity = 0.0;
          isVisible = false;
}else {
            myOpacity = 1.0;
            isVisible = true;
          }
          });
      }, child: Text('Close'))
    ],
  ),
)
);
}}