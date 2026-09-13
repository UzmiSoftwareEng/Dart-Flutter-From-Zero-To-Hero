
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home:  MyHomePage(title: 'Flutter Demo'),
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
    backgroundColor: Colors.green.shade300,
    title: Text('Gradient'),
),
body: Container(
   decoration: BoxDecoration(
    /* gradient: LinearGradient(
         colors: [
           Color(0xffa6c0fe), Color(0xfff68084), 
         ],
     begin: FractionalOffset(1.0, 0.5) ,
     end: FractionalOffset(0.0, 1.0),
       stops: [0.0, 1.0]
     )
   ),
)*/
     
     gradient: RadialGradient(
         colors: [
           Color(0xffa6c0fe), Color(0xfff680b1),
         ],
       center: Alignment.center
     ),))
);}}