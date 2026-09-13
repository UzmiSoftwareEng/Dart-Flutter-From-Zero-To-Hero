
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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  var arrNames = [
    {
      'name'  :  'Uzma',
      'mobNo' : '123456789',
      'unread'  : '2'
    },
    {
      'name'  :  'Imtiaz',
      'mobNo' : '123456700',
      'unread' :  '5'
    },
    {
    'name'  :   'Sana',
    'mobNo' : '0003456700',
    'unread' :  '3'
    },
    {
      'name'  :  'Ali',
      'mobNo' : '123456789',
      'unread' :  '6'
    },
    {
    'name'  :  'Imtiaz',
    'mobNo' : '123456700',
    'unread' :  '5'
    },
    {
    'name'  :   'Sana',
    'mobNo' : '0003456700',
    'unread' :  '3'
    },
    {
    'name'  :  'Basit',
    'mobNo'  : '996758321',
    'unread' :  '6'
    },
];

@override
Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
   backgroundColor: Colors.green.shade300,
   title: Text('Mapping List'),
),
body: Container(
  child: ListView(
    /*children: arrNames.map((value) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(21),
            ),

            child: Center(child: Text('value', style: TextStyle(color: Colors.white),)),
          ),
        ),
    ),
    ).toList(),
  ),*/

      children: arrNames.map((value) =>
          ListTile(
            leading: Icon(Icons.person_add_rounded),
            title: Text(value['name'].toString()),
            subtitle : Text(value['mobNo'].toString()),
            trailing: CircleAvatar(
              radius: 21,
              backgroundColor: Colors.purple.shade200,
                child: Text(value['unread'].toString(),)),
          ),
      ).toList()
      ))
);}}