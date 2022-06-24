import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
        child: Column(
          children: [
            Icon(Icons.list),
            Text('Todoey'),
          ],
        ),
      ),
    );
  }
}
