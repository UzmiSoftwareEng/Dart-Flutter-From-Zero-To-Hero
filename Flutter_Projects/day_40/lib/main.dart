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
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() =>
      _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        backgroundColor: Colors.purple,
      ), //
        body: Container(
          color: Colors.purple.shade100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 + no2;

                    result = "The sum of $no1 and $no2 is $sum";

                    setState(() {});
                  }, child: Text('Add')),

                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sub = no1 - no2;
                    result = "The diff of $no1 and $no2 is $sub";

                    setState((){});
                    }, child: Text('sub')),

                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var product = no1 * no2;
                    result = "The Product of $no1 and $no2 is $product)";

                    setState((){});
                  }, child: Text('product')),


                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var div = no1 / no2;
                    result = "The $no1 can be divided by $no2 , ${div.toStringAsFixed(3)}";

                    setState((){});
                  }, child: Text('div')),

                ],
              ),
              Padding(padding: EdgeInsets.all(21), child: Text(result, style: TextStyle(fontSize: 23, color: Colors.purple),),)

            ],
                  ),
          ),
        )
    );

  }

}
