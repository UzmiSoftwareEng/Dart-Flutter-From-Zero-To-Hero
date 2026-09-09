import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  var name;

  ProfileScreen(this.name);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Profile Screen'),
      backgroundColor: Colors.purple.shade200,
    ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Flutter Developers, $name',style: TextStyle(fontSize: 30, color: Colors.black),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
              )
            ),
              onPressed: (){
                Navigator.pop(context );
         }, child: Text('Welcome', style: TextStyle(color: Colors.black),)),
           ],
       ),
     )
   );
  }
  
}