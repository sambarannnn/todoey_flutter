import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';
import '../models/task.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxCallback: (bool checkboxState) {
                  setState(() {
                    taskData.tasks[index].toggleDone();
                  });
                });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
