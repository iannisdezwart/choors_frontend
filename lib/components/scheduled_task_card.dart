import 'package:choors_frontend/screens/scheduled_task_screen.dart';
import 'package:flutter/material.dart';

class ScheduledTaskCard extends StatelessWidget {
  final String id;
  final String taskName;
  final String dueDateText;
  final String pointsText;
  final String statusText;

  const ScheduledTaskCard({
    super.key,
    required this.id,
    required this.taskName,
    required this.dueDateText,
    required this.pointsText,
    required this.statusText,
  });

  void _onTap(context) {
    Navigator.of(context).pushNamed(
      '/scheduled-task',
      arguments: ScheduledTaskScreenArgs(
        scheduledTaskId: id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    dueDateText,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    pointsText,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    statusText,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
