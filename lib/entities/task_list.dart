class TaskList {
  List<TaskListEntry> tasks;

  TaskList({
    required this.tasks,
  });

  factory TaskList.fromJson(Map<String, dynamic> json) {
    return TaskList(
      tasks: (json['tasks'] as List)
          .map((e) => TaskListEntry.fromJson(e))
          .toList(),
    );
  }
}

class TaskListEntry {
  String id;
  String name;
  String description;
  DateTime freqBase;
  int freqOffset;
  int timeLimit;
  int scheduleOffset;
  double points;
  double penalty;
  String responsibleTaskGroup;

  TaskListEntry({
    required this.id,
    required this.name,
    required this.description,
    required this.freqBase,
    required this.freqOffset,
    required this.timeLimit,
    required this.scheduleOffset,
    required this.points,
    required this.penalty,
    required this.responsibleTaskGroup,
  });

  factory TaskListEntry.fromJson(Map<String, dynamic> json) {
    return TaskListEntry(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      freqBase: DateTime.parse(json['freqBase']),
      freqOffset: json['freqOffset'],
      timeLimit: json['timeLimit'],
      scheduleOffset: json['scheduleOffset'],
      points: json['points'],
      penalty: json['penalty'],
      responsibleTaskGroup: json['responsibleTaskGroup'],
    );
  }
}
