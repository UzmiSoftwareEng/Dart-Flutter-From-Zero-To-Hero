import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch:Colors.blue),
      home: HomeScreen(),
    );
  }
  
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text("Home"),
      actions: [IconButton(icon:Icon (Icons.search),onPressed: (){},)],
      ),
      drawer: Drawer(),
      body: Center(
        child: Text("Hello Flutter"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon((Icons.add)),),
      bottomNavigationBar: BottomNavigationBar(items: [],),
    );

  }
}