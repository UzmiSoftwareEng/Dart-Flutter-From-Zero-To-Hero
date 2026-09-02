import 'package:creating_custom_widget/ui_helper.dart';
import 'package:creating_custom_widget/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Flutter Developer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: RoundedButton(btnName: 'Login',
                icon: Icon(Icons.lock, color: Colors.purple,),
                callBack: (){
                print('Logged In');
              },
              textStyle: mTextStyle16(),),
            ),
            SizedBox(height: 25,),
            Container(
              width: 150,
              child: RoundedButton(btnName: 'press',
                callBack: (){
                  print('Logged In');
                },
                textStyle: mTextStyle16(),),
            ),
            SizedBox(height: 25,),
            Container(
              width: 150,
              child: RoundedButton(btnName: 'play',
                icon: Icon(Icons.play_arrow, color: Colors.purple,),
                callBack: (){
                  print('Logged In');
                },
                textStyle: mTextStyle16(),),
            ),
          ],
        ),
      )

    );
  }
}
