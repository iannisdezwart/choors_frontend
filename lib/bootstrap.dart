import 'package:choors_frontend/config/config.dart';
import 'package:choors_frontend/controllers/people_page_controller.dart';
import 'package:choors_frontend/controllers/schedule_page_controller.dart';
import 'package:choors_frontend/controllers/tasks_page_controller.dart';
import 'package:choors_frontend/services/people_service.dart';
import 'package:choors_frontend/services/schedule_service.dart';
import 'package:choors_frontend/services/task_service.dart';
import 'package:choors_frontend/transport/api_transport.dart';

class Services {
  late ScheduleService scheduleService;
  late TaskService taskService;
  late PeopleService peopleService;

  Services(ApiTransport apiTransport) {
    scheduleService = ScheduleService(apiTransport: apiTransport);
    taskService = TaskService(apiTransport: apiTransport);
    peopleService = PeopleService(apiTransport: apiTransport);
  }
}

class Controllers {
  late SchedulePageController schedulePageController;
  late TasksPageController tasksPageController;
  late PeoplePageController peoplePageController;

  Controllers(Services services) {
    schedulePageController =
        SchedulePageController(scheduleService: services.scheduleService);
    tasksPageController =
        TasksPageController(taskService: services.taskService);
    peoplePageController =
        PeoplePageController(peopleService: services.peopleService);
  }
}

class Bootstrap {
  static final _instance = Bootstrap._();

  Bootstrap._() {
    config = Config();
    apiTransport = ApiTransport(baseUrl: config.apiBaseUrl);
    services = Services(apiTransport);
    controllers = Controllers(services);
  }

  factory Bootstrap() {
    return _instance;
  }

  late Config config;
  late Services services;
  late Controllers controllers;
  late ApiTransport apiTransport;
}
