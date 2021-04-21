import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  AddTaskScreen({this.addTaskScreenCallback});
  final Function addTaskScreenCallback;

  @override
  Widget build(BuildContext context) {

    String newTaskName;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newTaskName = value;
              },
            ),
            RawMaterialButton(
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              fillColor: Colors.lightBlueAccent,
              onPressed: (){
                addTaskScreenCallback(newTaskName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
