import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(FlutterTextField());
}

class FlutterTextField extends StatelessWidget{
  @override
  Widget build(BuildContext build){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget{
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Developer'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
          child: Container(
            width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      //keyboardType: TextInputType.phone,
                      controller: emailText,
                      //enabled: false,
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          )
                        ), //
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.blue
                            )
                        ), //
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.pink
                            )
                          ), //
                        //suffixText: ('User Email'),
                        prefixIcon: IconButton(
                            icon: Icon(Icons.phone, color: Colors.pink ,),
                          onPressed: (){

                          }
                        ), //
                      ),
                      ),
                    SizedBox(height: 20),
                    TextField(
                      controller: passText,
                      obscureText: true,
                      obscuringCharacter: '*',
                      //enabled: false,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 2,
                            ),
                        ),
                      ),
                    ), //
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        print('Login Button Pressed');
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        foregroundColor: Colors.white,

                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
          ),
      ),
    );
  }
}