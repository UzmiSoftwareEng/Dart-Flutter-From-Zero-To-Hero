import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(CurrentDate());
}

class CurrentDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade500,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}'),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade500,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                      setState(() {

                      });
                      SizedBox(height: 20);
                    }, child: Text('Current Time')),
              ],
            ),
          ),
        )
    ); //
  }}
