void main(){
  List<String> names = ["Uzma", "Imtiaz","Basit"];
  Map<String, dynamic> Student ={"name": "Uzma", "age": 19, "Cgpa": 3.7};

   
  //for(int i = 0; i<names.length; i++){
    //print(names[i]);
  //}

  //names.forEach((values){
  //print(values);
//} );

//for(String name in names){
  //print(name);
//}

print(Student.keys);

for(var values in Student.keys){
  print(Student[values]);
}

Student.keys.forEach((values){
  print(Student[values]);
});
}