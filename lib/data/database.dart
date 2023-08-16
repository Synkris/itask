import 'package:hive_flutter/hive_flutter.dart';

class TaskDatabase {
  List taskList = [];
  //reference our box
  final _mybox = Hive.box('mybox');

//Initial
  void createInitialData() {
    taskList = [
      ["Make Schedule", false],
      ["Schedule Exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    taskList = _mybox.get("TASKLIST");
  }

  //updateDatabase
  void updateDatabase() {
    _mybox.put("TASKLIST", taskList);
  }
}
