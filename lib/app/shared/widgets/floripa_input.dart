import 'package:flutter/material.dart';

class FloripaInput extends StatelessWidget {
  final String label;
  final IconData prefixIcon;

  const FloripaInput({
    required this.label,
    required this.prefixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}