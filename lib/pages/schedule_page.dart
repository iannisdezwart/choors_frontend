import 'package:choors_frontend/components/scheduled_task_card.dart';
import 'package:choors_frontend/controllers/schedule_page_controller.dart';
import 'package:choors_frontend/entities/schedule.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  final SchedulePageController controller;

  const SchedulePage({
    required this.controller,
    super.key,
  });

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  Schedule? _schedule;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      houseId: 'TODO',
      personId: 'TODO',
    );

    setState(() {
      _schedule = widget.controller.schedule;
    });
  }

  @override
  Widget build(BuildContext context) {
    var schedule = _schedule;

    if (schedule == null) {
      return const CircularProgressIndicator();
    }

    return Column(
      children: [
        schedule.schedule.isEmpty
            ? const Text('No tasks scheduled')
            : Column(
                children: [
                  Text(
                    'My schedule',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ...schedule.schedule.map(
                    (scheduledTask) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      child: ScheduledTaskCard(
                        id: scheduledTask.id,
                        taskName: scheduledTask.name,
                        dueDateText: scheduledTask.dueDate.toString(),
                        pointsText: scheduledTask.points.toString(),
                        statusText: 'UNFINISHED',
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
