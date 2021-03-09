import 'package:flutter/foundation.dart'; //to use changeNotifier
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
    Task(name: 'buy fruits'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
