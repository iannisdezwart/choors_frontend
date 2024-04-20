class DetailedScheduledTask {
  final String id;
  final String name;
  final DateTime dueDate;
  final double points;
  final String description;
  final String responsiblePerson;

  DetailedScheduledTask({
    required this.id,
    required this.name,
    required this.dueDate,
    required this.points,
    required this.description,
    required this.responsiblePerson,
  });

  factory DetailedScheduledTask.fromJson(Map<String, dynamic> json) {
    return DetailedScheduledTask(
      id: json['id'],
      name: json['name'],
      dueDate: DateTime.parse(json['dueDate']),
      points: json['points'],
      description: json['description'],
      responsiblePerson: json['responsiblePerson'],
    );
  }
}
