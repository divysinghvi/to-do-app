import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList=[];

  // referance the box
  final _myBox = Hive.box('myBox');

   
  // run this method if this isi the 1st time ever opening this app

  void createInitialDate(){
    toDoList = [
      ["Make Tutorial",false],
      ["Do Excercise",false],

    ];
  }

  //load data from database
  void loadDate(){
    toDoList = _myBox.get("TODOLIST");

  }

  //Upade the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);

  }
}