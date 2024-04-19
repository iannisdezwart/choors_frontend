import 'package:choors_frontend/components/person_card.dart';
import 'package:choors_frontend/controllers/people_page_controller.dart';
import 'package:choors_frontend/entities/person_list.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  final PeoplePageController controller;

  const PeoplePage({
    required this.controller,
    super.key,
  });

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  PersonList? _personList;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      houseId: 'TODO',
    );

    setState(() {
      _personList = widget.controller.peopleList;
    });
  }

  @override
  Widget build(BuildContext context) {
    var personList = _personList;

    if (personList == null) {
      return const CircularProgressIndicator();
    }

    return Column(
      children: [
        personList.people.isEmpty
            ? const Text('No people in house')
            : Column(
                children: [
                  Text(
                    'People in house',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ...personList.people.map(
                    (person) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      child: PersonCard(
                        personNameText: person.name,
                        penaltyText: person.penalty.toString(),
                        pictureUrl: person.pictureUrl,
                        pointsText: person.points.toString(),
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}