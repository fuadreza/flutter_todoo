
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_todoo/widgets/task_list_finished.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class FinishedTaskScreen extends StatelessWidget {
  const FinishedTaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Finished Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).finishedTask.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: TaskListFinished(),
            ),
          ),
        ],
      ),
    );
  }
}
