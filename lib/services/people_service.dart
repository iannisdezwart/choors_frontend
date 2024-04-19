import 'package:choors_frontend/entities/person_list.dart';
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
        id: "id-1",
        name: "Person 1",
        points: 0,
        penalty: 0,
        pictureUrl: "https://via.placeholder.com/150",
      ),
      PersonListEntry(
        id: "id-2",
        name: "Person 2",
        points: 0,
        penalty: 0,
        pictureUrl: "https://via.placeholder.com/150",
      ),
      PersonListEntry(
        id: "id-3",
        name: "Person 3",
        points: 0,
        penalty: 0,
        pictureUrl: "https://via.placeholder.com/150",
      ),
    ]);
  }
}
