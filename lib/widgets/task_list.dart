import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter2/widgets/task_tile.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: (name) {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
