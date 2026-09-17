import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Auth_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Page"),
      ),
      body: IconButton(
          onPressed: (){}, icon: Icon(Icons.fingerprint)),
    );
  }
}