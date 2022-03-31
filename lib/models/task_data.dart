import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter2/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'milk'),
    Task(name: 'bread'),
    Task(name: 'tomato'),
  ];

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }
}
