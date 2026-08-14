void main(){
  //Lists
  //List data = [1,"Hi", 3.5, true];
  List<int> data = [15, 4, 6];
  
  //print(data);

  //Add elements in list
  data.add(12);
  print(data);

  print(data[0]);

  //Modify list
  data[0] = 10;
  print(data);

  //Remove elements
  data.removeAt(2);
  print(data);
}