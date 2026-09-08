import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_in_flutter/main.dart';

class Introscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.cyan,
      title: Text('Splash Screen', style: TextStyle(fontSize: 21),
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome Everyone', style: TextStyle(
              fontSize: 21
          ),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
              )
            ),
              onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DashBoardScreen()
                ));
            },
              child: Text('Click Here', style: TextStyle(color: Colors.white),))
        ],
      ),
    ),
  );
  }
}