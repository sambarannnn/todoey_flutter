import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Go to Gym'),
    Task(name: 'Have breakfast'),
    Task(name: 'Study!'),
    Task(name: 'Netflix & Chill'),
  ];
  void addTask({required String name}) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleCheckbox({required int index}) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask({required int index}) {
    if (_tasks[index].isDone) {
      _tasks.removeAt(index);
      notifyListeners();
    }
  }

  UnmodifiableListView<Task> getTasks() => UnmodifiableListView(_tasks);
}
