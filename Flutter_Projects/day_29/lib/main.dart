import 'package:flutter/material.dart';

void main(){
  runApp(SplittingFlutterApp());
}
class SplittingFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}

class ProfileWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50,
          ),
        ),
        Text("Uzma Mumtaz", style: TextStyle(fontSize: 20),),
        Text('Future Flutter Developer'),
      ],
    );
  }
}

class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        )
      ),
        onPressed: (){
          print("Logged In");
          SizedBox(height: 70);
        },
        child: Text('Login', style: TextStyle(color: Colors.black),),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Developer"),
        backgroundColor: Colors.grey,
      ),

      body: Column(
        children: [
          ProfileWidget(),
          LoginButton(),
        ],
      ),
    );
  }
}