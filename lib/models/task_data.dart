
import 'package:flutter/cupertino.dart';
import 'package:flutter_todoo/models/task.dart';

import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Mask'),
    Task(name: 'Bring mask'),
    Task(name: 'Love yourself'),
  ];

  List<Task> _finishedTask = [
    Task(name: 'Take a note', isDone: true)
  ];

  List<Task> get tasks {
    return _tasks;
  }

  List<Task> get finishedTask {
    return _finishedTask;
  }

  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task){
    finishedTask.add(task);
    tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

}