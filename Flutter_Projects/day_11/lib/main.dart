import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
          appBar: AppBar(
            title: Text('ScrollView Widget'),
            backgroundColor: Colors.yellowAccent
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    Container(
                      margin: EdgeInsets.only(right:  15),
                      width: 200,
                      height: 200,
                      color: Colors.indigoAccent,
                    ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.white12,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.tealAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.deepPurpleAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  15),
                        width: 200,
                        height: 200,
                        color: Colors.lightBlueAccent,
                      ),
                  
                      Container(
                        margin: EdgeInsets.only(bottom:  15),
                        width: 200,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                  
                      Container(
                        margin: EdgeInsets.only(bottom:  15),
                        width: 200,
                        height: 200,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:  15),
                        width: 200,
                        height: 200,
                        color: Colors.deepOrange,
                      )
                  ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.lightBlueAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.pink,
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.teal,
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.brown,
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                margin: EdgeInsets.only(bottom:  15),
                //width: 200,
                height: 200,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      )
        ),
    );
  }
}
