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
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch:  Colors.deepOrange),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State <MyHomePage> createState() {
    return _MyHomePageState();
}
  }

class _MyHomePageState extends State<MyHomePage>{
  var count = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Stateful'),
       backgroundColor: Colors.purple,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Count: $count', style: TextStyle(fontSize: 20),),
           ElevatedButton(
               onPressed: (){
                 setState(() {
                   count++;
                   print(count);
                 });

               }, child: Text('Increment count')),
         ],
       ),
     ),
   );
  }
}
