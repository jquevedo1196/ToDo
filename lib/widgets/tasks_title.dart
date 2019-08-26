import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TasksTitle({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
          isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue){
          checkboxCallback(newValue);
        },
      ),
    );
  }
}
