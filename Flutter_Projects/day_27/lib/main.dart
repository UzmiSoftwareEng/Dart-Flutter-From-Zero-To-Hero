import 'package:flutter/material.dart';

void main() {
  runApp(GridViewApp());
}

class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
       primarySwatch: Colors.blue
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

  var arrColors = [Colors.purple,
    Colors.orange,
    Colors.lime,
    Colors.blueGrey,
    Colors.cyanAccent,
    Colors.indigoAccent,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Flutter Developer'),
      ),

      body: GridView.builder(
        itemBuilder:(context, index) {
            return Container(color: arrColors[index],);
          },
        itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      ),
    );}}
        
        
        
/*Column(
        children: [
          Expanded(
            child: GridView.count(
            crossAxisCount: 5,
              crossAxisSpacing: 8,
            mainAxisSpacing: 8,
                    children: [
              Container(color: arrColors[0]),
              Container(color: arrColors[1]),
              Container(color: arrColors[2]),
              Container(color: arrColors[3]),
              Container(color: arrColors[4]),
              Container(color: arrColors[5]),
              Container(color: arrColors[6]),
            ],
                    ),
          ),
          SizedBox(height: 100,),
          Expanded(
            child: GridView.extent(maxCrossAxisExtent: 50,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
              ],
            ),
          ),
      ],)*/
