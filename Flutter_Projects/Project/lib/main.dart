import 'package:flutter/material.dart';
import 'package:login_page/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //scaffoldBackgroundColor: Colors.blue.shade300
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

 var uNameController = TextEditingController;
 var uPassController = TextEditingController;



@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.blue,
title: Center(child: Text('Login Page')),
),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    RichText(
        text: TextSpan(
        text: 'Welcome Back',
        style: TextStyle(fontSize: 30,
        color: Colors.indigo,
 ),
),),
    SizedBox(
      height: 11,
    ),
    RichText(
        text: TextSpan(
          text: 'Login to continue',
          style: TextStyle(fontSize: 18,
          color: Colors.blueGrey,
        )),
    ),
    SizedBox(
      height: 11,
    ),
    TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(21),
        borderSide: BorderSide(
          color: Colors.indigoAccent,
        ),
      ),
    ),
    ),
    SizedBox(
      height: 11,
    ),
    TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: BorderSide(
            color: Colors.orange
          )
        )
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Align(
      alignment: Alignment.centerRight,
        child:  TextButton(onPressed: (){
        print('Click Forgot Password');
    },
            child: Text('Forgot Password',
      style: TextStyle(fontSize: 18,
          color: Colors.black),
   ))),
    SizedBox(height: 18,
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        )
      ),
        onPressed: (){},
        child: Text('Login',
          style: TextStyle(
              fontSize:21,
              color: Colors.black),
        )),
    SizedBox(
      height: 15,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(onPressed: (){
          print('Clicked Sign Up');
        },
            child: Text('Sign Up', style: TextStyle(fontSize: 18,
            color: Colors.blue,
              decoration: TextDecoration.underline
            ),))
      ],
    )
  ],
),

);
 }
}
