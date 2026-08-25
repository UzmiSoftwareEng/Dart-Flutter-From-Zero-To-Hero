import 'package:flutter/material.dart';

void main() {
  runApp( FlutterApp());
}

class FlutterApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarginApp(),

    );
  }
}
class MarginApp extends StatelessWidget{
@override
Widget build(BuildContext context) {

  List arrNames = ['uzma', 'Imtiaz', 'Basit', 'Sana', 'Maria'];

return Scaffold(
appBar: AppBar(
title: Text('Flutter Developer'),
backgroundColor: Colors.deepOrange,
),

body: ListView.separated(itemBuilder: (context, index) {
  return ListTile(
    leading: Text('$index'),
    title: Text(arrNames[index]),
    subtitle: Text('Flutter Developer'),
    trailing: Icon(Icons.favorite, color: Colors.red,),
  );
},
  itemCount: arrNames.length,
    separatorBuilder: (context, index){
    return Divider(color: Colors.white12, height: 100, thickness: 3,);
       },
     ),
   );
 }
}