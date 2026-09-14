import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin{
  //late Animation _animation;
  late AnimationController _animationController;

  var listRadius = [
    100.0,
    150.0,
    200.0,
    250.0,
    300.0,
    350.0,
  ];

  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 10), lowerBound: 0.5);
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener((){
      setState(() {

      });
    });

    _animationController.repeat();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
   backgroundColor: Colors.green.shade300,
   title: Text('Ripple Animation Effect'),
),
body: Center(
  child: Stack(
    alignment: Alignment.center,
   children: [
     buildMyContainer(listRadius[0]),
     buildMyContainer(listRadius[1]),
     buildMyContainer(listRadius[2]),
     buildMyContainer(listRadius[3]),
     buildMyContainer(listRadius[4]),
     buildMyContainer(listRadius[5]),
     Icon(Icons.eighteen_mp_outlined,
       color: Colors.white,
       size: 30,
     )
  ]
  ), //
  ),
);
  }
 Widget buildMyContainer(radius){
   return Container(
       width: radius*_animationController.value,
       height: radius*_animationController.value,
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         color: Colors.blueGrey.withOpacity(
             1.0 - _animationController.value),
       ),
   );
 }
}
