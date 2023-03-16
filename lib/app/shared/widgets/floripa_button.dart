import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_floripa/app/shared/styles/floripa_colors.dart';
import 'package:flutter_floripa/app/shared/styles/floripa_styles.dart';

class FloripaButton extends StatelessWidget {
  final String text;

  final double? height;
  final double? width;

  const FloripaButton({
    required this.text,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [context.floripaColors.primary, Colors.blue[500]!],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: context.floripaStyles.floripaRegular.copyWith(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
