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
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.cyan,
          ),
            Container(
              width: 160,
              height: 160,
              color: Colors.brown,
            ),
            Container(
              child: Center(child: Text('Container C', style: TextStyle(fontSize: 20),)),
              width: 120,
              height: 120,
              color: Colors.orange,
            ),

        ],
      )
    );
  }
}
