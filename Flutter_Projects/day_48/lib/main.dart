import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
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
  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;

  Decoration decr = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.grey
  ); //


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
                height: _height,
                decoration: decr,
                curve: Curves.slowMiddle,
                duration: Duration(
                    seconds: 3,
                )),
            SizedBox(
              height: 21,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero
                )
              ),
                onPressed: (){

                  setState((){
                    if(flag) {
                      _width = 150.0;
                      _height = 250.0;
                      decr = BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange
                      );
                      flag = false;
                    }else {
                      _width = 250.0;
                      _height = 150.0;
                      decr = BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.cyan,

                      );
                  flag = true;
                    }
                  });
                }, child: Text('Animated', style: TextStyle(fontSize: 21, color: Colors.black),))
          ],
        ),
      )
    );
  }
}
