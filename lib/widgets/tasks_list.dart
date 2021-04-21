import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:to_do/models/task.dart';
class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      name: "Buy milk",
    ),
    Task(
      name: "Buy eggs",
    ),
    Task(
      name: "Buy bread",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (newValue) {
          setState(() {
            tasks[index].toggleDone();
          });
          },
      );
      },
      itemCount: tasks.length,
    );
  }
}