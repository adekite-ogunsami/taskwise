import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController _taskNameController = TextEditingController();
  TextEditingController _taskDescriptionController = TextEditingController();
  TextEditingController _taskPriorityController = TextEditingController();
  TextEditingController _taskDueDateController = TextEditingController();

  get taskManager => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _taskNameController,
              decoration: InputDecoration(labelText: 'Task Name'),
            ),
            TextField(
              controller: _taskDescriptionController,
              decoration: InputDecoration(labelText: 'Task Description'),
            ),
            TextField(
              controller: _taskPriorityController,
              decoration: InputDecoration(labelText: 'Priority'),
            ),
            TextField(
              controller: _taskDueDateController,
              decoration: InputDecoration(labelText: 'Due Date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = _taskNameController.text;
                String description = _taskDescriptionController.text;
                String priority = _taskPriorityController.text;
                String dueDate = _taskDueDateController.text;

                Task newTask = Task(name, description, priority, 'Incomplete', dueDate);
                taskManager.addTask(newTask);

                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Text('Save Task'),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  Task(String name, String description, String priority, String s, String dueDate);
}