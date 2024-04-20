class DetailedTask {
  final String id;
  final String name;
  final String description;
  final DateTime freqBase;
  final int freqOffset;
  final int timeLimit;
  final int scheduleOffset;
  final double points;
  final double penalty;
  final String responsibleTaskGroup;

  DetailedTask({
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

  factory DetailedTask.fromJson(Map<String, dynamic> json) {
    return DetailedTask(
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
