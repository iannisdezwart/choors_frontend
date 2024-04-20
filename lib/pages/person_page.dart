import 'package:choors_frontend/controllers/person_page_controller.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  final String personId;
  final PersonPageController controller;

  const PersonPage({
    required this.personId,
    required this.controller,
    super.key,
  });

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    await widget.controller.init(
      personId: widget.personId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
