import 'package:choors_frontend/entities/detailed_task.dart';
import 'package:choors_frontend/entities/task_list.dart';
import 'package:choors_frontend/services/service.dart';

class TaskService extends Service {
  TaskService({
    required super.apiTransport,
  });

  Future<void> createNewTask({
    required String houseId,
    required String name,
    required String description,
    required DateTime freqBase,
    required int freqOffset,
    required int timeLimit,
    required int scheduleOffset,
    required double points,
    required double penalty,
    required String responsibleTaskGroup,
  }) async {
    // TODO MOCK

    return;
  }

  Future<TaskList> fetchTaskList({
    required String houseId,
  }) async {
    // TODO MOCK

    return TaskList(tasks: [
      TaskListEntry(
        id: 'id-1',
        name: 'Task 1',
        description: 'Description 1',
        freqBase: DateTime.now(),
        freqOffset: 0,
        timeLimit: 0,
        scheduleOffset: 0,
        points: 0,
        penalty: 0,
        responsibleTaskGroup: 'task-group',
      ),
      TaskListEntry(
        id: 'id-2',
        name: 'Task 2',
        description: 'Description 2',
        freqBase: DateTime.now(),
        freqOffset: 0,
        timeLimit: 0,
        scheduleOffset: 0,
        points: 0,
        penalty: 0,
        responsibleTaskGroup: 'task-group',
      ),
      TaskListEntry(
        id: 'id-3',
        name: 'Task 3',
        description: 'Description 3',
        freqBase: DateTime.now(),
        freqOffset: 0,
        timeLimit: 0,
        scheduleOffset: 0,
        points: 0,
        penalty: 0,
        responsibleTaskGroup: 'task-group',
      ),
    ]);
  }

  Future<DetailedTask> fetchDetailedTask({
    required String taskId,
  }) async {
    // TODO MOCK

    return DetailedTask(
      id: 'id',
      name: 'Task',
      description: 'Description',
      freqBase: DateTime.now(),
      freqOffset: 0,
      timeLimit: 0,
      scheduleOffset: 0,
      points: 0,
      penalty: 0,
      responsibleTaskGroup: 'task-group',
    );
  }
}
