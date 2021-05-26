import 'package:flutter/material.dart';
import 'package:flutter_todoo/models/task_data.dart';
import 'package:provider/provider.dart';

import 'task_tile.dart';

class TaskListFinished extends StatefulWidget{
  @override
  _TaskListFinishedState createState() => _TaskListFinishedState();
}

class _TaskListFinishedState extends State<TaskListFinished> {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.finishedTask[index].name,
                isChecked: taskData.finishedTask[index].isDone,
            );
          },
          itemCount: taskData.finishedTask.length,
        );
      },
    );
  }
}
