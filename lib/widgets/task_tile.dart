import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback, this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
      },
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.amber,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
