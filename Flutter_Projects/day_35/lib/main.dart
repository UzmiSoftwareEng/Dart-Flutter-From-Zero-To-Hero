import 'package:flutter/material.dart';

void main() {
  runApp(MyFlutterProject());
}

class MyFlutterProject extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Text('Rich Text Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 21,
              ),
              children: <TextSpan> [
                TextSpan(text: 'Hello ',),
                TextSpan(text: 'World!! ', style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
                TextSpan(
                  text: ' Welcome to ',
                ),
                TextSpan(
                  text: 'Programming',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Miracle History'
                  )
                )
              ]
            )),
      ),

    );
  }
}
