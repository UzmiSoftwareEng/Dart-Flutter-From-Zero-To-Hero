import 'dart:io';

void main(){
  print("Enter 1st num: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print ("Enter operator: (+,-,*,/)");
  String op = stdin.readLineSync()!;
  print("Enter 2nd num: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result = 0;
  switch(op){
    case "+":
    result = num1+num2;
    break;
    case "-":
    result = num1-num2;
     break;
    case "*":
    result = num1*num2;
     break;
    case "/":
    if (num2==0){
      print("Error : cannot divide by zero!");
    }
    result = (num1/num2);
    break;
    default:
    print("Invalid operator: ");
  }
  print("result: $result");
}