import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter2/themes.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallback;
  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: kDarkenedScreenColor,
      child: Container(
        padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add task',
              style: kAddTasksHeader,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                    ),
                    hintText: 'Enter short description'),
                onChanged: (newValue) {
                  newTaskTitle = newValue;
                },
              ),
            ),
            Container(
              width: 700.0,
              padding: EdgeInsets.only(top: 40.0, bottom: 50.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  //if (newTaskTitle != null)
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: kGeneralStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
