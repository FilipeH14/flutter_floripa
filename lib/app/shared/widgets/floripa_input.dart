import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class FloripaInput extends StatefulWidget {
  final String label;
  final IconData prefixIcon;
  final bool isObscure;

  const FloripaInput({
    required this.label,
    required this.prefixIcon,
    this.isObscure = false,
    Key? key,
  }) : super(key: key);

  @override
  State<FloripaInput> createState() => _FloripaInputState();
}

class _FloripaInputState extends State<FloripaInput> {
  late bool secretText;

  @override
  void initState() {
    super.initState();

    secretText = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secretText,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: Icon(widget.prefixIcon, color: Colors.grey[700]),
        suffixIcon: widget.isObscure
            ? IconButton(
                icon: Icon(
                  secretText ? FeatherIcons.eyeOff : FeatherIcons.eye,
                  color: Colors.grey[700],
                ),
                onPressed: () => setState(() => secretText = !secretText),
              )
            : null,
      ),
    );
  }
}
