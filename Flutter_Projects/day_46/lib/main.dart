import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();

  }
class _MyHomeScreenState extends State<MyHomeScreen> {
   RangeValues values = RangeValues(0, 2);
@override
Widget build(BuildContext context) {
  RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
      title: Text('Range Slider'),
        backgroundColor: Colors.purple,
),
  body: RangeSlider(
      values: values,
      labels: labels,
      divisions: 10,
      activeColor: Colors.cyan,
      inactiveColor: Colors.cyan.shade200,
      min: 0,
      max: 2,
      onChanged: (newValue) {
        values = newValue;
        print('${newValue.start}, ${newValue.end}');
        setState(() {

        });
      }
  ),
);}}