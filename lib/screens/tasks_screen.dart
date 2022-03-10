import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter2/entities/task.dart';
import 'package:todoey_flutter2/entities/task_list.dart';
import 'package:todoey_flutter2/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  Task task1 = new Task(text: 'Buy bread', isChecked: false);
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
