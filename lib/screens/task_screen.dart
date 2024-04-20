import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/pages/task_page.dart';
import 'package:flutter/material.dart';

class TaskScreenArgs {
  final String taskId;

  const TaskScreenArgs({
    required this.taskId,
  });
}

class TaskScreen extends StatelessWidget {
  final TaskScreenArgs args;

  const TaskScreen({
    required this.args,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choors'),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: TaskPage(
          taskId: args.taskId,
          controller: Bootstrap().controllers.taskPageController,
        ),
      ),
    );
  }
}
