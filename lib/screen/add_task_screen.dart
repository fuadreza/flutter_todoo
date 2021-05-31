import 'package:flutter/material.dart';
import 'package:flutter_todoo/models/task.dart';
import 'package:flutter_todoo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String _taskName = 'Unrecognized';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 50.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                style: TextStyle(fontSize: 18),
                onChanged: (value) {
                  setState(() {
                    _taskName = value;
                  });
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    color: Colors.amber,
                    onPressed: () {
                      Provider.of<TaskData>(context, listen: false)
                          .addTask(Task(name: _taskName));
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
