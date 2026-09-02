import 'package:flutter/material.dart';

void main() {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 100,
                color: Colors.purple,
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.greenAccent,
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.brown,
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.pink,
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.blue,
                //child: Center(child: Text("Uzma",style: TextStyle(fontSize: 21),)),
              ),
              Container(
                width: 70,
                height: 100,
                color: Colors.yellowAccent,
              ),
            Container(
              width: 70,
              height: 100,
              color: Colors.blueGrey,
            ),
        Container(
          width: 70,
          height: 100,
          color: Colors.brown,
        ),
              Container(
                width: 70,
                height: 100,
                color: Colors.yellowAccent,
              ),
            ],
          ),
      ),
      );
  }
}
