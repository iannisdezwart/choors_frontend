import 'package:choors_frontend/entities/schedule.dart';
import 'package:choors_frontend/services/service.dart';

class ScheduleService extends Service {
  ScheduleService({
    required super.apiTransport,
  });

  Future<Schedule> fetchSchedule({
    required String houseId,
    required String personId,
  }) async {
    // TODO MOCK

    return Schedule(schedule: [
      ScheduledTask(
        id: '1',
        name: 'Task 1',
        dueDate: DateTime.now(),
        points: 10,
      ),
      ScheduledTask(
        id: '2',
        name: 'Task 2',
        dueDate: DateTime.now(),
        points: 20,
      ),
    ], history: [
      CompletedTask(
        id: '3',
        name: 'Task 3',
        dueDate: DateTime.now(),
        points: 30,
        penalty: 5,
        isPenalised: true,
      ),
      CompletedTask(
        id: '4',
        name: 'Task 4',
        dueDate: DateTime.now(),
        points: 40,
        penalty: 0,
        isPenalised: false,
      ),
    ]);
  }
}
