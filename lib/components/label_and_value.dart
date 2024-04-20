import 'package:flutter/material.dart';

class LabelAndValue extends StatelessWidget {
  final String label;
  final String value;
  final void Function()? onEdit;

  const LabelAndValue({
    super.key,
    required this.label,
    required this.value,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              '$label: ',
              style: const TextStyle(
                color: Color(0xFF8B7B8B),
                fontSize: 18,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFFC652C6),
                fontSize: 18,
              ),
            ),
          ],
        ),
        if (onEdit != null)
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: onEdit,
          ),
      ],
    );
  }
}
