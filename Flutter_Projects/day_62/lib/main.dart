import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmojiPage(),
    );
  }
}

class EmojiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String smile = String.fromCharCode(0x1F60A);
    String fire = String.fromCharCode(0x1F525);
    String rocket = String.fromCharCode(0x1F680);
    String thumbsUp = String.fromCharCode(0x1F44D);
    String angry = String.fromCharCode(0x1F620);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Runes & Emojis'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              smile,
              style: TextStyle(fontSize: 60),
            ),

            Text(
              fire,
              style: TextStyle(fontSize: 60),
            ),

            Text(
              rocket,
              style: TextStyle(fontSize: 60),
            ),

            Text(
              thumbsUp,
              style: TextStyle(fontSize: 60),
            ),

            Text(
              angry,
              style: TextStyle(fontSize: 60,
              ),
            )
          ],
        ),
      ),
    );
  }
}