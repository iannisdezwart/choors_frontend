import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/screens/main_screen.dart';
import 'package:choors_frontend/screens/person_screen.dart';
import 'package:choors_frontend/screens/scheduled_task_screen.dart';
import 'package:choors_frontend/screens/task_screen.dart';
import 'package:choors_frontend/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(bootstrap: Bootstrap()));
}

class MyApp extends StatelessWidget {
  final Bootstrap bootstrap;

  const MyApp({
    required this.bootstrap,
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      onGenerateRoute: (settings) {
        Map<String, WidgetBuilder> routes = {
          '/': (context) => const MainScreen(),
          '/scheduled-task': (context) {
            ScheduledTaskScreenArgs args =
                settings.arguments as ScheduledTaskScreenArgs;
            return ScheduledTaskScreen(args: args);
          },
          '/task': (context) {
            TaskScreenArgs args = settings.arguments as TaskScreenArgs;
            return TaskScreen(args: args);
          },
          '/person': (context) {
            PersonScreenArgs args = settings.arguments as PersonScreenArgs;
            return PersonScreen(args: args);
          }
        };

        return MaterialPageRoute(
          builder: routes[settings.name]!,
        );
      },
    );
  }
}
