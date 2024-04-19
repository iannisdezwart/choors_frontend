class Schedule {
  List<ScheduledTask> schedule;
  List<CompletedTask> history;

  Schedule({
    required this.schedule,
    required this.history,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      schedule: (json['schedule'] as List)
          .map((e) => ScheduledTask.fromJson(e))
          .toList(),
      history: (json['history'] as List)
          .map((e) => CompletedTask.fromJson(e))
          .toList(),
    );
  }
}

class ScheduledTask {
  final String id;
  final String name;
  final DateTime dueDate;
  final double points;

  ScheduledTask({
    required this.id,
    required this.name,
    required this.dueDate,
    required this.points,
  });

  factory ScheduledTask.fromJson(Map<String, dynamic> json) {
    return ScheduledTask(
      id: json['id'],
      name: json['name'],
      dueDate: DateTime.parse(json['dueDate']),
      points: json['points'],
    );
  }
}

class CompletedTask {
  final String id;
  final String name;
  final DateTime dueDate;
  final double points;
  final double penalty;
  final bool isPenalised;

  CompletedTask({
    required this.id,
    required this.name,
    required this.dueDate,
    required this.points,
    required this.penalty,
    required this.isPenalised,
  });

  factory CompletedTask.fromJson(Map<String, dynamic> json) {
    return CompletedTask(
      id: json['id'],
      name: json['name'],
      dueDate: DateTime.parse(json['dueDate']),
      points: json['points'],
      penalty: json['penalty'],
      isPenalised: json['isPenalised'],
    );
  }
}
