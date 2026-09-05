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
       primarySwatch: Colors.purple
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Constrained Box'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
          minWidth: 150,
          maxHeight: 100
        ),
          /*child: Text('Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer',
            style: TextStyle(fontSize: 21,
              overflow: TextOverflow.fade
            ),),*/

        child: ElevatedButton(onPressed: (){

        }, child: Text('Clicked here')),
        ),
    );
  }
}
