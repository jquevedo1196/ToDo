import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/tasks_title.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: "Comprar leche"),
    Task(name: "Hacer tarea"),
    Task(name: "Dormir un poco más"),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTitle(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkboxCallback: (checkboxState){
            setState(() {
              task[index].toggleDone();
            });
          }
        );
      },
      itemCount: task.length,
    );
  }
}
