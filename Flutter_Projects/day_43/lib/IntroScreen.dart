import 'package:flutter/material.dart';
import 'package:switching_screens/main.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switching Screens'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('Hello Everyone', style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                )),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => MyHomePage()
                ));

              }, child: Text('Click Here'),),
            ],
          ),
    );
  }

}