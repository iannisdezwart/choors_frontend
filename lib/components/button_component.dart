import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final bool secondary;

  const ButtonComponent({
    required this.label,
    required this.onPressed,
    this.secondary = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          secondary ? const Color(0xFFB8A7D6) : const Color(0xFF8A6FBA),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: secondary ? const Color(0xFF4D4955) : const Color(0xFFE2DDEC),
          fontSize: 18,
        ),
      ),
    );
  }
}
