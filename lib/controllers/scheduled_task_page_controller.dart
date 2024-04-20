import 'package:choors_frontend/entities/detailed_scheduled_task.dart';
import 'package:choors_frontend/services/schedule_service.dart';

class ScheduledTaskPageController {
  final ScheduleService scheduleService;

  ScheduledTaskPageController({
    required this.scheduleService,
  });

  DetailedScheduledTask? _detailedScheduledTask;
  DetailedScheduledTask? get detailedScheduledTask => _detailedScheduledTask;

  Future<void> init({
    required String houseId,
    required String scheduledTaskId,
  }) async {
    _detailedScheduledTask = await scheduleService.fetchScheduledTask(
      houseId: houseId,
      scheduledTaskId: scheduledTaskId,
    );
  }
}
