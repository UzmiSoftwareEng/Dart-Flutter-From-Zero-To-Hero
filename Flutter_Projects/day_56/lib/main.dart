
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
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
     with SingleTickerProviderStateMixin {
   late Animation animation;
   late Animation colorAnimation;
   late AnimationController animationController;

   @override
   void initState() {
    super.initState();
    
    animationController = AnimationController(vsync: this,
        duration: Duration(seconds: 5));
    animation = Tween(begin: 200.0, end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.orange, end: Colors.purple).animate(animationController  );

    animationController.addListener(() {
      print(animation.value);

      setState(() {

      });
    });

    animationController.forward();
   }

@override
Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green.shade300,
    title: Text('Tween Animation'),
),
body: Center(
  child: Container(
      width: animation.value,
      height: animation.value,
    color: colorAnimation.value,
  ),
)
   );
   }
}