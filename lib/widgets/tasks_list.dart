import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';
import '../models/task.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.getTasks()[index].isDone,
              taskTitle: taskData.getTasks()[index].name,
              checkboxCallback: () {
                taskData.toggleCheckbox(index: index);
              },
              longPressCallback: () {
                taskData.deleteTask(index: index);
              },
            );
          },
          itemCount: taskData.getTasks().length,
        );
      },
    );
  }
}
