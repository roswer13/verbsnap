import 'package:flutter/material.dart';
import 'package:verbsnap/src/design/design.dart';

final ThemeData lightTheme = ThemeData(primarySwatch: kMaterialPrimarySwatch);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.deepPurple,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: kMaterialPrimarySwatch,
    brightness: Brightness.dark,
  ),
);
