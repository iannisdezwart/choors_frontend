import 'package:choors_frontend/entities/schedule.dart';
import 'package:choors_frontend/services/schedule_service.dart';

class SchedulePageController {
  final ScheduleService scheduleService;

  SchedulePageController({
    required this.scheduleService,
  });

  Schedule? _schedule;
  Schedule? get schedule => _schedule;

  Future<void> init({
    required String houseId,
    required String personId,
  }) async {
    _schedule = await scheduleService.fetchSchedule(
      houseId: houseId,
      personId: personId,
    );
  }
}
