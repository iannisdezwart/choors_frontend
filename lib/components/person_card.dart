import 'package:choors_frontend/screens/person_screen.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String id;
  final String pictureUrl;
  final String personNameText;
  final String pointsText;
  final String penaltyText;

  const PersonCard({
    required this.id,
    required this.pictureUrl,
    required this.personNameText,
    required this.pointsText,
    required this.penaltyText,
    super.key,
  });

  void _onTap(context) {
    Navigator.of(context).pushNamed(
      '/person',
      arguments: PersonScreenArgs(
        personId: id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                pictureUrl,
                width: 64,
                height: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personNameText,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    pointsText,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    penaltyText,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
