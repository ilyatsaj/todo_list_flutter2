import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter2/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  int get taskLength {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
