import 'package:choors_frontend/entities/detailed_scheduled_task.dart';
import 'package:flutter/material.dart';

class DetailedScheduledTaskComponent extends StatelessWidget {
  final DetailedScheduledTask detailedScheduledTask;

  const DetailedScheduledTaskComponent({
    required this.detailedScheduledTask,
    super.key,
  });

  List<Widget> _buildTaskDetails(BuildContext context) {
    return [
      Text(
        detailedScheduledTask.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      Text(
        'Points: ${detailedScheduledTask.points}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Responsible person: ${detailedScheduledTask.responsiblePerson}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Due by: ${detailedScheduledTask.dueDate.toString()}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Points: ${detailedScheduledTask.points.toString()}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Description: ${detailedScheduledTask.description}',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildTaskDetails(context),
    );
  }
}
