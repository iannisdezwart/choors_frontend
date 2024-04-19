import 'package:choors_frontend/components/task_card.dart';
import 'package:choors_frontend/controllers/tasks_page_controller.dart';
import 'package:choors_frontend/entities/task_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TasksPage extends StatefulWidget {
  final TasksPageController controller;

  const TasksPage({
    required this.controller,
    super.key,
  });

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  TaskList? _taskList;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      houseId: 'TODO',
    );

    setState(() {
      _taskList = widget.controller.taskList;
    });
  }

  String _responsibleTaskGroupText({
    required String responsibleTaskGroup,
  }) {
    return responsibleTaskGroup;
  }

  String _pointsText({
    required TaskListEntry task,
  }) {
    return "${task.points} pts";
  }

  String _frequencyText({
    required TaskListEntry task,
  }) {
    return "base: ${DateFormat.yMMMd().format(task.freqBase)}, offset: ${task.freqOffset}";
  }

  String _timeText({
    required TaskListEntry task,
  }) {
    return "time: ${task.timeLimit}";
  }

  @override
  Widget build(BuildContext context) {
    var taskList = _taskList;

    if (taskList == null) {
      return const CircularProgressIndicator();
    }

    return Column(
      children: [
        taskList.tasks.isEmpty
            ? const Text('No tasks available')
            : Column(
                children: [
                  Text(
                    'All tasks',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ...taskList.tasks.map(
                    (task) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      child: TaskCard(
                        taskName: task.name,
                        responsibleTaskGroupText: _responsibleTaskGroupText(
                          responsibleTaskGroup: task.responsibleTaskGroup,
                        ),
                        pointsText: _pointsText(
                          task: task,
                        ),
                        frequencyText: _frequencyText(
                          task: task,
                        ),
                        timeText: _timeText(
                          task: task,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
