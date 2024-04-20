import 'package:choors_frontend/components/detailed_task_component.dart';
import 'package:choors_frontend/controllers/task_page_controller.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  final String taskId;
  final TaskPageController controller;

  const TaskPage({
    required this.taskId,
    required this.controller,
    super.key,
  });

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      taskId: widget.taskId,
    );
  }

  @override
  Widget build(BuildContext context) {
    var task = widget.controller.detailedTask;

    if (task == null) {
      return const CircularProgressIndicator();
    }

    return DetailedTaskComponent(
      detailedTask: task,
    );
  }
}
