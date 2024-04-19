import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/pages/people_page.dart';
import 'package:choors_frontend/pages/schedule_page.dart';
import 'package:choors_frontend/pages/tasks_page.dart';
import 'package:flutter/material.dart';

class _NavigationBarTab {
  final String title;
  final IconData icon;
  final Widget page;

  const _NavigationBarTab({
    required this.title,
    required this.icon,
    required this.page,
  });
}

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<_NavigationBarTab> _tabs = [
    _NavigationBarTab(
      title: 'Schedule',
      icon: Icons.calendar_today,
      page: SchedulePage(
        controller: Bootstrap().controllers.schedulePageController,
      ),
    ),
    _NavigationBarTab(
      title: 'Tasks',
      icon: Icons.task_outlined,
      page: TasksPage(
        controller: Bootstrap().controllers.tasksPageController,
      ),
    ),
    _NavigationBarTab(
      title: 'People',
      icon: Icons.people,
      page: PeoplePage(
        controller: Bootstrap().controllers.peoplePageController,
      ),
    ),
    const _NavigationBarTab(
      title: 'Settings',
      icon: Icons.settings,
      page: Center(child: Text('Settings')),
    ),
  ];

  void _onNavigationPress(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choors'),
      ),
      body: Center(child: _tabs[_currentIndex].page),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onNavigationPress,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          ..._tabs.map(
            (tab) => BottomNavigationBarItem(
              icon: Icon(tab.icon),
              label: tab.title,
            ),
          ),
        ],
      ),
    );
  }
}
