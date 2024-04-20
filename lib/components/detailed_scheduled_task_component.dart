import 'package:choors_frontend/components/button_component.dart';
import 'package:choors_frontend/components/label_and_value.dart';
import 'package:choors_frontend/entities/detailed_scheduled_task.dart';
import 'package:flutter/material.dart';

class DetailedScheduledTaskComponent extends StatelessWidget {
  final DetailedScheduledTask detailedScheduledTask;

  const DetailedScheduledTaskComponent({
    required this.detailedScheduledTask,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Scheduled task',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Color(0xFFEA659A),
                  ),
                ),
                Text(
                  detailedScheduledTask.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Color(0xFF8659DD),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                LabelAndValue(
                  label: 'Responsible person',
                  value: detailedScheduledTask.responsiblePerson,
                ),
                LabelAndValue(
                  label: 'Due by',
                  value: detailedScheduledTask.dueDate.toString(),
                ),
                LabelAndValue(
                  label: 'Points',
                  value: detailedScheduledTask.points.toString(),
                ),
                LabelAndValue(
                  label: 'Description',
                  value: detailedScheduledTask.description,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonComponent(
                      label: 'Mark done',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ButtonComponent(
                      label: 'Delegate',
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonComponent(
                      label: 'Go to task',
                      onPressed: () {},
                      secondary: true,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ButtonComponent(
                      label: 'Complain',
                      onPressed: () {},
                      secondary: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
