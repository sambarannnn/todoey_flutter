import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // AddTaskScreen({required this.addCallback});
  // final Function addCallback;
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: textController,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                if (textController.text != '') {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(name: textController.text);
                }
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
