import 'package:flutter/foundation.dart'; //to use changeNotifier
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
    Task(name: 'buy fruits'),
  ];

  /* неизменяемый массив, чтобы использовать только методы, геттеры и не
  обращаться напрямую к _tasks, который теперь приватный по той же причине.
  Обращаться напрямую к _tasks нельзя потому что надо использовать
  notifyListeners(); А он нужен для того чтобы не только добавить новый task но и перерисовать виджеты. */
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
