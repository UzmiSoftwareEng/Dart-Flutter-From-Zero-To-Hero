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
        //primarySwatch: Colors.blue,
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
            width: 200,
              height: 200,
              //child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: emailText,
                      //enabled: false,
                      decoration: InputDecoration(
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
                        suffixText: ('User Email'),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.email, color: Colors.pink ,),
                          onPressed: (){

                          }
                        ), //
                        prefixIcon: Icon(Icons.face)
                      ),
                      ),
                    SizedBox(height: 20),
                    TextField(
                      controller: passText,
                      //enabled: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 50,
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              )));
  }
}