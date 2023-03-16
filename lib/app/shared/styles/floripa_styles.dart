import 'package:flutter/material.dart';

class FloripaStyles {
  static FloripaStyles? _instance;

  FloripaStyles._();

  static FloripaStyles get i {
    _instance ??= FloripaStyles._();
    return _instance!;
  }

  String get font => 'PTSans';

  TextStyle get floripaRegular => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.normal,
      );

  TextStyle get floripaBold => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w700,
      );
}

extension FloripaStylesExtensions on BuildContext {
  FloripaStyles get floripaStyles => FloripaStyles.i;
}
