void main(){
  int age = 18;
  bool isExperienced = true;

   //AND operator:
  /*if(age >= 18 && isExperienced == true){
    print("Employee is able to hire");
}
else{
  print("Employee not able");
}*/

//OR Operator:
/*if(age >= 18 || isExperienced == false){
   print("Employee is able to hire");
}
else{
  print("Employee not able");
}*/

//NOT Oprator:
if(isExperienced == false){
  print("Employee is able to hire");
}
else{
  print("Employee not able");
}
}