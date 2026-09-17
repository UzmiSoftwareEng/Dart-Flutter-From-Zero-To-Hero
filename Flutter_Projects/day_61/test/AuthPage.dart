import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthPage'),
      ),
      body: IconButton(
          onPressed: (){}, icon: Icon(Icons.fingerprint, size: 100, color: Colors.black,)),
    );
  }
}