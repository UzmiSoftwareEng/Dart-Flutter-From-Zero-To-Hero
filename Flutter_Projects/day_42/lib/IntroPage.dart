import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_one_screen_to_another_screen/main.dart';

class Intropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello Developers', style: TextStyle(
              fontSize: 21,
          fontWeight: FontWeight.bold),),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: (){

            Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => MyHomePage(),
            ));
          },
              child: Text('Next'))
        ],
      ),
    );
  }
}