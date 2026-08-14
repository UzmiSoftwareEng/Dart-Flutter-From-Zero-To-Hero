import 'dart:io';
void main(){
  print("Enter 1st num: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter operator (+,-,*,/)");
  String operator = stdin.readLineSync()!;
  print("Enter 2nd num: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result=0;

  if(operator == "+"){
   result = num1+num2;
  }
  else if(operator == "_"){
    result = num1-num2;
  } 
  else if(operator == "*"){
    result = num1*num2;
  } 
  else if(operator == "/"){
    result = num1/num2;
  }
  else{
    print("Invalid operator");

  }
  print("The result is: $result");
}