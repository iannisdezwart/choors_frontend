import 'package:choors_frontend/entities/detailed_task.dart';
import 'package:choors_frontend/services/task_service.dart';

class TaskPageController {
  final TaskService taskService;

  TaskPageController({
    required this.taskService,
  });

  DetailedTask? _detailedTask;
  DetailedTask? get detailedTask => _detailedTask;

  Future<void> init({
    required String taskId,
  }) async {
    _detailedTask = await taskService.fetchDetailedTask(taskId: taskId);
  }
}
