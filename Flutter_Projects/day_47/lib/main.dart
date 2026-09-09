import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();

}
class _MyHomeScreenState extends State<MyHomeScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

   var result = "";
   var bgColor = Colors.purple.shade200;

  @override
Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     title: Text('Build BMI'),
backgroundColor: Colors.purple,
),
    body: Container(
      color: bgColor,
      child: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800,color: Colors.black
              ),),
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label: Text('Enter your weight in kg'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 21,
              ),

              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text("Enter yor height(in feet) "),
                  prefixIcon: Icon((Icons.height)),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 21,
              ),
              TextField(
                controller: inController,
                decoration: InputDecoration(
                  label: Text("Enter your height (in inch)")
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                 onPressed: () {
                   var wt = wtController.text.toString();
                   var ft = ftController.text.toString();
                   var inch = inController.text.toString();

                   if (wt != "" && ft != "" && inch != "") {
                     //BIM Calculation

                     var iwt = int.parse(wt);
                     var ift = int.parse(ft);
                     var iInch = int.parse(inch);

                     var tInch = (ift * 12) + iInch;

                     var tCm = tInch * 2.54;

                     var tM = tCm / 100;

                     var BMI = iwt / (tM + tM);
                     var msg = "";

                     if(BMI<18) {
                        msg = "You are UnderWeight";
                       bgColor = Colors.red.shade200;
                     }else if(BMI>25){
                        msg = "You are OverWeight";
                       bgColor = Colors.orange.shade200;
                     }else{
                        msg = "Yor are healthy";
                       bgColor = Colors.green.shade200;
                     }

                     setState(() {
                       result = "$msg \n Your BMI is: ${BMI.toStringAsFixed(3)}";
                     });
                   }
                   else {
                     setState(() {
                       result = "Fill all the blank spaces!!";
                     });
                   }},
                   child:
                   Text('Calculate',
                     style: TextStyle(
                         color: Colors.black),
                   ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(result, style: TextStyle(fontSize: 21),)
            ],
          ),
        ),
      ),
    )
);}}