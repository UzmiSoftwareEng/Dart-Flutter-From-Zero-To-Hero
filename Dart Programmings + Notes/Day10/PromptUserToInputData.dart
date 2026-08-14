import 'dart:io';

void main(){
   stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your cgpa: ");
  double cgpa = double.parse(stdin.readLineSync()!);
  stdout.write("Are you student: (true/false)");
  bool isStudent = (stdin.readLineSync()!.trim().toLowerCase() == "true");

   print("\nStudent Information");
   print("Name:        $name");
   print("Age:         $age");
   print("Cgpa:        $cgpa");
   print("Is Student:  $isStudent");

}