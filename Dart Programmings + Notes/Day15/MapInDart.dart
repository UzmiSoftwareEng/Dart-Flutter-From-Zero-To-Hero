void main(){

  //Maps-->Key-value pairs
  Map map = {"name":"Uzma Mumtaz","age":"19"};
  //Map map = Map();
  //print(map["age"]);
  //map["education"] = "Graduate";
  map["bio"] = "i am developer";
  print(map);
  //map.remove("education");
  //map.clear();
  map.addAll({"Hobby": "photography"});

  //print(map.length);
  print(map.keys);
  print(map.values);
  print(map);
}