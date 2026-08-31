import 'package:flutter/material.dart';void main() {
  runApp(CurrentDate());
}

class CurrentDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {

var time = DateTime.now();
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.cyanAccent,
title: Text('Flutter Developer'),
),
    body: Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Select Date',
            style: TextStyle(fontSize: 21),
),
   ElevatedButton(
       onPressed: () async {
         DateTime? datePicked = await showDatePicker(
           context: context,
           firstDate: DateTime(2026, 8, 31),
           lastDate: DateTime(2027, 8, 31),
         );

         if (datePicked != null) {
           print('Date selected: ${datePicked.day}: ${datePicked.month}: ${datePicked.year}');
         }
       },
       style: ElevatedButton.styleFrom(
         backgroundColor: Colors.cyanAccent,
         foregroundColor: Colors.black,

         shape: RoundedRectangleBorder(
           borderRadius: BorderRadiusGeometry.circular(11),
         )
       ),
child: Text('Show me')),
         SizedBox(height: 15,),
         ElevatedButton(
             onPressed: () async {
               TimeOfDay? pickedTime = await showTimePicker(
                   context: context,
                   initialTime: TimeOfDay.now(),
                   initialEntryMode: TimePickerEntryMode.dial,
               );

               if (pickedTime != null) {
                 print('Time selected: ${pickedTime.hour}: ${pickedTime.minute}');
               }
             },
             style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.cyanAccent,
                 foregroundColor: Colors.black,

                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadiusGeometry.circular(11),
                 )
             ),
             child: Text('Select time')),
       ],
   ),
    )

);}}