import 'package:choors_frontend/entities/detailed_task.dart';
import 'package:flutter/material.dart';

class DetailedTaskComponent extends StatelessWidget {
  final DetailedTask detailedTask;

  const DetailedTaskComponent({
    required this.detailedTask,
    super.key,
  });

  List<Widget> _buildTaskDetails(BuildContext context) {
    return [
      Text(
        detailedTask.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      Text(
        'Freq base: ${detailedTask.freqBase}, freq offset: ${detailedTask.freqOffset}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Time limit: ${detailedTask.timeLimit}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Points: ${detailedTask.points}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Penalty: ${detailedTask.penalty}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Responsible group: ${detailedTask.responsibleTaskGroup}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Schedule offset: ${detailedTask.scheduleOffset}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Text(
        'Description: ${detailedTask.description}',
        style: Theme.of(context).textTheme.bodyMedium,
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
