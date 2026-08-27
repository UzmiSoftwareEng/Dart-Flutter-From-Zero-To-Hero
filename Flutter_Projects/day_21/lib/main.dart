import 'package:flutter/material.dart';
import 'package:flutter_styles_and_themes/ui_helper/util.dart';

void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.lightGreen),
          bodyMedium: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.purple),
        ) //
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          Text("Text 1", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.teal)),
          Text("Text 2", style: Theme.of(context).textTheme.bodyMedium),
          Text("Text 3", style: Theme.of(context).textTheme.displaySmall),
          Text("Text 4", style: Theme.of(context).textTheme.bodySmall),
          Text("Text 5", style: mTextStyle11(textColor: Colors.yellowAccent),),
        ],
      ),
    );
  }
}
