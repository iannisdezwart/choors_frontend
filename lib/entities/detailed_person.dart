import 'package:choors_frontend/entities/schedule.dart';

class DetailedPerson {
  final String id;
  final String name;
  final String pictureUrl;
  final double points;
  final double penalties;
  final List<String> groups;
  final List<ScheduledTask> schedule;
  final List<CompletedTask> history;

  DetailedPerson({
    required this.id,
    required this.name,
    required this.pictureUrl,
    required this.points,
    required this.penalties,
    required this.groups,
    required this.schedule,
    required this.history,
  });

  factory DetailedPerson.fromJson(Map<String, dynamic> json) {
    return DetailedPerson(
      id: json['id'],
      name: json['name'],
      pictureUrl: json['pictureUrl'],
      points: json['points'],
      penalties: json['penalties'],
      groups: json['groups'] as List<String>,
      schedule: (json['schedule'] as List)
          .map((e) => ScheduledTask.fromJson(e))
          .toList(),
      history: (json['history'] as List)
          .map((e) => CompletedTask.fromJson(e))
          .toList(),
    );
  }
}