import 'package:flutter/material.dart';


class Task {
  final String name;
  final String description;
  final String priority;
  String status;
  final String dueDate;

  Task(this.name, this.description, this.priority, this.status, this.dueDate);
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void updateTaskStatus(String taskName, String newStatus) {
    Task task = tasks.firstWhere((task) => task.name == taskName);
    if (task != null) {
      task.status = newStatus;
    }
  }

  void deleteTask(String taskName) {
    tasks.removeWhere((task) => task.name == taskName);
  }
}

class MyApp extends StatelessWidget {
  final TaskManager taskManager = TaskManager();

  @override
  Widget build(BuildContext context) {
    Task task1 = Task(
        "Complete project", "Finish the coding project", "High", "Incomplete", "2022-12-31");
    Task task2 = Task("Meeting with team", "Discuss upcoming plans", "Medium", "Incomplete", "2022-11-15");

    taskManager.addTask(task1);
    taskManager.addTask(task2);

    taskManager.updateTaskStatus("Complete project", "Complete");

    taskManager.deleteTask("Meeting with team");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task Management App'),
        ),
        body: ListView.builder(
          itemCount: taskManager.tasks.length,
          itemBuilder: (context, index) {
            Task task = taskManager.tasks[index];
            return ListTile(
              title: Text(task.name),
              subtitle: Text(task.description),
              trailing: Text(task.status),
            );
          },
        ),
      ),
    );
  }
}