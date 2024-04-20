import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/pages/scheduled_task_page.dart';
import 'package:flutter/material.dart';

class ScheduledTaskScreenArgs {
  final String scheduledTaskId;

  const ScheduledTaskScreenArgs({
    required this.scheduledTaskId,
  });
}

class ScheduledTaskScreen extends StatelessWidget {
  final ScheduledTaskScreenArgs args;

  const ScheduledTaskScreen({
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
        child: ScheduledTaskPage(
          scheduledTaskId: args.scheduledTaskId,
          controller: Bootstrap().controllers.scheduledTaskPageController,
        ),
      ),
    );
  }
}
