class PersonList {
  List<PersonListEntry> people;

  PersonList({
    required this.people,
  });

  factory PersonList.fromJson(Map<String, dynamic> json) {
    return PersonList(
      people: (json['people'] as List)
          .map((e) => PersonListEntry.fromJson(e))
          .toList(),
    );
  }
}

class PersonListEntry {
  String id;
  String name;
  String pictureUrl;
  double points;
  double penalty;

  PersonListEntry({
    required this.id,
    required this.name,
    required this.pictureUrl,
    required this.points,
    required this.penalty,
  });

  factory PersonListEntry.fromJson(Map<String, dynamic> json) {
    return PersonListEntry(
      id: json['id'],
      name: json['name'],
      pictureUrl: json['picture'],
      points: json['points'],
      penalty: json['penalty'],
    );
  }
}