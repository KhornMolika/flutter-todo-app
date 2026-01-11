import 'package:hive_flutter/hive_flutter.dart' show Hive;

class ToDoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('todoBox');

  // run this method if first time ever openning this app
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Exercise', false],
    ];
  }

  // load data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }

}
