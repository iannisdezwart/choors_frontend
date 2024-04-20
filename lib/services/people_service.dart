import 'package:choors_frontend/entities/detailed_person.dart';
import 'package:choors_frontend/entities/person_list.dart';
import 'package:choors_frontend/entities/schedule.dart';
import 'package:choors_frontend/services/service.dart';

class PeopleService extends Service {
  PeopleService({
    required super.apiTransport,
  });

  Future<PersonList> fetchPersonList({
    required String houseId,
  }) async {
    // TODO MOCK

    return PersonList(people: [
      PersonListEntry(
        id: 'id-1',
        name: 'Person 1',
        points: 0,
        penalty: 0,
        pictureUrl: 'https://via.placeholder.com/150',
      ),
      PersonListEntry(
        id: 'id-2',
        name: 'Person 2',
        points: 0,
        penalty: 0,
        pictureUrl: 'https://via.placeholder.com/150',
      ),
      PersonListEntry(
        id: 'id-3',
        name: 'Person 3',
        points: 0,
        penalty: 0,
        pictureUrl: 'https://via.placeholder.com/150',
      ),
    ]);
  }

  Future<DetailedPerson> fetchDetailedPerson({
    required String houseId,
    required String personId,
  }) async {
    // TODO MOCK

    return DetailedPerson(
      id: 'id-1',
      name: 'Person 1',
      pictureUrl: 'https://via.placeholder.com/150',
      points: 0,
      penalties: 0,
      groups: [
        'Group 1',
        'Group 2',
      ],
      schedule: [
        ScheduledTask(
          id: 'id-1',
          name: 'Task 1',
          dueDate: DateTime.now(),
          points: 10,
        ),
        ScheduledTask(
          id: 'id-2',
          name: 'Task 2',
          dueDate: DateTime.now(),
          points: 20,
        ),
        ScheduledTask(
          id: 'id-3',
          name: 'Task 3',
          dueDate: DateTime.now(),
          points: 30,
        )
      ],
      history: [
        CompletedTask(
          id: 'id-4',
          name: 'Task 4',
          dueDate: DateTime.now(),
          points: 40,
          penalty: 0,
          isPenalised: false,
        ),
        CompletedTask(
          id: 'id-5',
          name: 'Task 5',
          dueDate: DateTime.now(),
          points: 50,
          penalty: 5,
          isPenalised: true,
        ),
        CompletedTask(
          id: 'id-6',
          name: 'Task 6',
          dueDate: DateTime.now(),
          points: 60,
          penalty: 0,
          isPenalised: false,
        ),
      ],
    );
  }
}
