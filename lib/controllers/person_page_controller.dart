import 'package:choors_frontend/services/people_service.dart';

class PersonPageController {
  final PeopleService peopleService;

  PersonPageController({
    required this.peopleService,
  });

  Future<void> init({
    required String personId,
  }) async {
    await peopleService.fetchDetailedPerson(
      houseId: 'TODO',
      personId: personId,
    );
  }
}
