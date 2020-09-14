import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_todoo/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Mask'),
    Task(name: 'Bring mask'),
    Task(name: 'Love yourself'),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

}