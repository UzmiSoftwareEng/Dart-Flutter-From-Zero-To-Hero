import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      title: Text('InkWell Widget in Flutter'),
        backgroundColor: Colors.blue,
      ), //

      body: Center(
        child: InkWell(
          onTap: (){
              print('Tapped on container');
          },
          onDoubleTap: (){
            print('Double-Tapped on container');
          },
          onLongPress: (){
            print('Long-pressed on container');
          },
          child: Container(
           width: 200,
            height:200,
            color: Colors.purple,
            child: Center(child: InkWell(
              onTap: (){
                print("Text widget Tapped");
              },
                child: Text('Pressed here', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
          ),
        ),
      )
      ),
      );
  }
}
