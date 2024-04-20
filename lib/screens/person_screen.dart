import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/pages/person_page.dart';
import 'package:flutter/material.dart';

class PersonScreenArgs {
  final String personId;

  const PersonScreenArgs({
    required this.personId,
  });
}

class PersonScreen extends StatelessWidget {
  final PersonScreenArgs args;

  const PersonScreen({
    required this.args,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choors'),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: PersonPage(
          personId: args.personId,
          controller: Bootstrap().controllers.personPageController,
        ),
      ),
    );
  }
}