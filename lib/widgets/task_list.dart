import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_todoo/models/task.dart';
import 'package:flutter_todoo/models/task_data.dart';
import 'package:provider/provider.dart';

import 'task_tile.dart';

class TaskList extends StatefulWidget{
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (value) {
                  /*
                setState(() {
                  tasks[index].toggleDone();
                });*/
                  // tasks[index].toggleDone();
                  // Provider.of<TaskData>(context, listen: false).toggleTask(tasks[index]);
                  // print(tasks[index].isDone);
                  taskData.tasks[index].isDone == false ? Scaffold.of(context).showSnackBar(SnackBar(content: Text('Long Press to Delete Task'),duration: Duration(seconds: 1),)) : null;

                  taskData.toggleTask(taskData.tasks[index]);
                  print(taskData.tasks[index].isDone);
                  // Timer(Duration(seconds: 2), () => taskData.removeTask(taskData.tasks[index]));
                },
              onLongPressCallback: (){
                taskData.removeTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
