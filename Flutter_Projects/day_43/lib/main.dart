import 'package:flutter/material.dart';
import 'package:switching_screens/IntroScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: IntroScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
body: Text('Most Welcome'),
);
  }}
