import 'package:choors_frontend/components/detailed_scheduled_task_component.dart';
import 'package:choors_frontend/controllers/scheduled_task_page_controller.dart';
import 'package:choors_frontend/entities/detailed_scheduled_task.dart';
import 'package:flutter/material.dart';

class ScheduledTaskPage extends StatefulWidget {
  final String scheduledTaskId;
  final ScheduledTaskPageController controller;

  const ScheduledTaskPage({
    required this.scheduledTaskId,
    required this.controller,
    super.key,
  });

  @override
  State<ScheduledTaskPage> createState() => _ScheduledTaskPageState();
}

class _ScheduledTaskPageState extends State<ScheduledTaskPage> {
  DetailedScheduledTask? _detailedScheduledTask;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      houseId: 'TODO',
      scheduledTaskId: widget.scheduledTaskId,
    );

    setState(() {
      _detailedScheduledTask = widget.controller.detailedScheduledTask;
    });
  }

  @override
  Widget build(BuildContext context) {
    var task = _detailedScheduledTask;

    if (task == null) {
      return const CircularProgressIndicator();
    }

    return DetailedScheduledTaskComponent(
      detailedScheduledTask: task,
    );
  }
}
