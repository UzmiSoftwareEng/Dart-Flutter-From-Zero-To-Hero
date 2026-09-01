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
        primarySwatch: Colors.cyan,
      ),
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom widget'),
      ),
      body: Container(
        child: Column(
          children: [ProfileWidget(), ContextWidget(), SubTitleWidget(), CatItem(),
          ],
        ),

            ),
      );
  }
}

class ProfileWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Expanded(
     flex: 3,
     child: Container(
       color: Colors.orange,
       height: 300,
       child: ListView.builder(itemBuilder: (context, index) => Padding(
         padding: const EdgeInsets.all(8.0),
         child: SizedBox(
           width: 70, height: 70,
           child: CircleAvatar(
             foregroundColor: Colors.pink,
           ),
         ),
       ),
         itemCount: 20, scrollDirection: Axis.horizontal,
       ),
     ),);
  }

}

class ContextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return  Expanded(
       flex: 4,
       child: Container(
         color: Colors.cyan,
         height: 300,
         child: ListView.builder(itemBuilder: (context, index) => Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.purple.shade200,
             ),
             title: Text("Uzma Mumtaz"),
             subtitle: Text("Flutter Developer"),
             trailing: Icon(Icons.face),
           ),
         ),),
       ),
     );
  }
}

class SubTitleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return   Expanded(
       flex: 2,
       child: Container(
         color: Colors.greenAccent,
         height: 300,
         child: ListView.builder(itemBuilder: (context, index)=> Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 200,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.orange
             ),
           ),
         ),itemCount: 10, scrollDirection: Axis.horizontal,),
       ),
   );
  }
}

class CatItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.pink,
              height: 300,
              child: GridView.count(crossAxisCount: 3,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.purple,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.orange,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.pink.shade200,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.greenAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.lime,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.cyan,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.brown,),
                  ),
                ],
              ),

            ),);
  }

}