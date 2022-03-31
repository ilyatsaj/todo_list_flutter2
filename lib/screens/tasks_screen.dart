import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter2/screens/add_task_screen.dart';
import 'package:todoey_flutter2/themes.dart';
import 'package:todoey_flutter2/widgets/task_list.dart';

import '../models/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            // builder: (context) => AddTaskScreen((newTaskTitle) {
            //   print(newTaskTitle);
            // }),
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
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
                  'TodoList',
                  style: kMainLabel,
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',
                  style: kGeneralStyle,
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
