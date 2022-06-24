import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy milk'),
  ];
  void addTask({required String name}) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleCheckbox({required String name}) {
    tasks.add(Task(name: name));
    notifyListeners();
  }
}
