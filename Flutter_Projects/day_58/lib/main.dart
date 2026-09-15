import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();

 static const String KEYNAME = 'name';
 var nameValue = 'No value saved';

  @override
  void initState() {
    super.initState();
    getValue();
  }

@override
Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     backgroundColor: Colors.green.shade300,
     title: Text('Shared Prefs'),
),
body: Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        controller: nameController,
        decoration: InputDecoration(
          label: Text('Name'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
        )
        ),
),
      SizedBox(
        height: 11,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            )
          ),
          onPressed: () async {
              var name = nameController.text.toString();

              var prefs = await SharedPreferences.getInstance();

             prefs.setString(KEYNAME, name);

          }, child: Text('Saved', style: TextStyle(color: Colors.black),)),
          SizedBox(
            height: 11,
          ),
          Text(nameValue)
    ],
  ), //
) //
);}

  void getValue() async {

    var prefs = await SharedPreferences.getInstance();

    var getName = prefs .getString(KEYNAME);

    nameValue = getName ??  'No value saved';

    setState(() {

    });
  }}