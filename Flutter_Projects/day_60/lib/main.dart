import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
         //scaffoldBackgroundColor: Colors.blue.shade300
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Effect')),
        ),
        body: Center(
            child: Theme(
                data: ThemeData(
                    cardColor: Colors.orange,
                  ),
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Card(
                    color: Colors.lightBlue.shade200,
                    child:Center(child: Text("Unique ThemeData", style: TextStyle(fontSize: 21, color: Colors.white)),
                    ),
                  ),
                )
            )
        ));
  }
}
