import 'package:hive_flutter/hive_flutter.dart';

class Database {
  List toDoList = [];

  // refer the box
  final _myBox = Hive.box('mybox');

  // run this method if this the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Make Video", false],
    ];
  }

  //load the data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
