import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: Text('Adding row and column')
            ), //
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     width: 100,
                     height: 100,
                     color: Colors.blue,
                  child: Text('A', style: TextStyle(fontSize: 30))),

                  Container(
                   width: 100,
                   height: 100,
                   color: Colors.pink,
                   child: Text('B', style: TextStyle(fontSize: 30))),

                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.teal,
                       child: Text('C', style: TextStyle(fontSize: 30))),

                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.lightGreen,
                       foregroundColor: Colors.black
                     ),
                       child: Text('Tapped me'),
                     onPressed: (){
                         print('Button Pressed');
                     },
                     onLongPress: (){
                         print('long Pressed');
                     },
                   ),
                  ],
                  ),
            ),
    ),
    );
  }
}
