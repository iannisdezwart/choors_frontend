import 'package:choors_frontend/entities/person_list.dart';
import 'package:choors_frontend/services/people_service.dart';

class PeoplePageController {
  final PeopleService peopleService;

  PeoplePageController({
    required this.peopleService,
  });

  PersonList? _personList;
  get peopleList => _personList;

  Future<void> init({
    required String houseId,
  }) async {
    _personList = await peopleService.fetchPersonList(houseId: houseId);
  }
}
