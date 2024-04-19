import 'package:choors_frontend/entities/task_list.dart';
import 'package:choors_frontend/services/task_service.dart';

class TasksPageController {
  final TaskService taskService;

  TasksPageController({
    required this.taskService,
  });

  TaskList? _taskList;
  get taskList => _taskList;

  Future<void> init({
    required String houseId,
  }) async {
    _taskList = await taskService.fetchTaskList(houseId: houseId);
  }
}
