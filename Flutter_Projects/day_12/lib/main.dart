import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    List names = ['Uzma','Basit', 'Sana','Maria', 'Kainat', 'Ayesha','Faisal'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
      title: Text('ListView in Flutter'),
          backgroundColor: Colors.lightBlue,
        ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(names[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(names[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
              ],
            ),
          ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(names[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
          ],
        );
      },
        itemCount: names.length,
        //itemExtent: 200,
        separatorBuilder: (context, index){
        return Divider(height: 100,thickness: 1,);
        },
      )

      ),

    );
  }
}
