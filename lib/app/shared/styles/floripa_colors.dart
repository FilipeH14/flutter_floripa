import 'package:flutter/material.dart';

class FloripaColors {
  static FloripaColors? _instance;

  FloripaColors._();

  static FloripaColors get i {
    _instance ??= FloripaColors._();
    return _instance!;
  }

  Color get primary => const Color(0XFF1E5BE4);
  Color get secondary => const Color(0XFFBD2860);
}

extension FloripaColorsExtensions on BuildContext {
  FloripaColors get floripaColors => FloripaColors.i;
}
