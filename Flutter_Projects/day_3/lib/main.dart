import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        Scaffold(
            appBar: AppBar(
              title: Text('Flutter Logo'),
            ),
            body: Images.assests('image/logo.png')

        ),
    );
  }
}
