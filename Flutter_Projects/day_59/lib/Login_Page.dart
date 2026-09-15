//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:real_life_usage_of_shared_pref/Home_Page.dart';
import 'package:real_life_usage_of_shared_pref/main.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var uNameController = TextEditingController();
  var uPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text('Login Page'),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [

            Icon(
              Icons.person_add_rounded,
              size: 80,
              color: Colors.purple,
            ),

            SizedBox(
              height: 11,
            ),

            TextField(
              controller: uNameController,
              decoration: InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),

            SizedBox(
              height: 11,
            ),

            TextField(
              controller: uPassController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                label: Text('Password'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),

            SizedBox(
              height: 11,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
              onPressed: () async {

                // Login successful
                var SharedPref = await SharedPreferences.getInstance();

                await SharedPref.setBool(
                  SplashScreenState.KEYLOGIN,
                  true,
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },

              child: Text('Login', style: TextStyle(fontSize: 21, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}