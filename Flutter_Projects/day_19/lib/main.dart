import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Dashboard(),

    );
  }
}

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Flutter Developer'),
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: CircleAvatar(
          child: Column(
            children: [
              Container(
                width: 30,
                  height: 30,
                  child: Image.asset('Images/logo.png')),
              Container(child: Text('uzma', style: TextStyle(fontSize: 20),),
              ),
            ],
          ),

                 backgroundColor: Colors.pink,
                 radius: 50,
                 //maxRadius: 50,
                 //minRadius: 50,
                ),
              ),


      );
  }
}
