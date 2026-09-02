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
        title: Text('SizedBox Widget'),
        backgroundColor: Colors.blueGrey
      ),
      body: Row(
        children: [
          SizedBox.square(
              dimension: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    onPressed:(){

                    }, child: Text('Click here',style: TextStyle(color: Colors.black, fontSize: 21),),
                  ),
      ),
             SizedBox(width: 30,),

             SizedBox.square(
                      dimension: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                        ),
                      onPressed:(){

                      }, child: Text('Click here',style: TextStyle(color: Colors.black, fontSize: 21),
                      ),
                  ),
            ),
    ],
      ));
  }
}
