import 'package:flutter/material.dart';

void main() {
  runApp(MyProject());
}

class MyProject extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Widget'),
        backgroundColor: Colors.limeAccent,
      ),
      body: Container(
        width: 300,
        height: 150,
        //width: double.infinity,
        //height: double.infinity,
        color: Colors.purple,
        child: Stack(
          children: [
            Positioned(
              bottom:  1,
              right: 1,
                child: Container(
            width: 100,
           height: 100,
          color: Colors.white,
        ),
            ), ],
        ),
      ),
    );
  }
}
