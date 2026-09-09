import 'package:flutter/material.dart';
import 'package:passing_data_to_second_screen/Profile_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.purple,
        ),
        body:  Center(
          child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Home Screen", style: TextStyle(fontSize: 21, color: Colors.black),
                 ),
                 SizedBox(
                   height: 9,
                 ),
                 TextField(
                   controller: nameController,
                 ),
                SizedBox(
                  height: 15,
            ),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.purple,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.zero,
                     )
                   ),
                     onPressed: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => ProfileScreen(nameController.text.toString()),));
                 },
                     child: Text('My Profile', style: TextStyle(color: Colors.white),))
              ],
              ),
          ),
        ),

    );
  }
}
