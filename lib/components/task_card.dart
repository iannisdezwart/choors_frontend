import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String taskName;
  final String responsibleTaskGroupText;
  final String pointsText;
  final String frequencyText;
  final String timeText;

  const TaskCard({
    super.key,
    required this.taskName,
    required this.responsibleTaskGroupText,
    required this.pointsText,
    required this.frequencyText,
    required this.timeText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    responsibleTaskGroupText,
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
                    frequencyText,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    timeText,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
