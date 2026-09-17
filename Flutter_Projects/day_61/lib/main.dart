import 'package:add_fingerprint_and_face_id/Home_Page.dart';
import 'package:flutter/material.dart';
import 'AuthService.dart';

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
     title: Center(child: Text('Add Fingerprint and Face ID')),
),
body: IconButton(
    onPressed: () async{
      bool check = await AuthService().authenticateLocally();
      if(check){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage()));
      }
      }, icon: Icon(Icons.fingerprint, size: 100,) )
);}}