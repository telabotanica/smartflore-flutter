import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xffff7469),
    secondary: Color(0xffff7469),
    surface: Color(0xFF055063),
    background: Color(0xffffffff),
    error: Color(0xffb00020),
    onPrimary: Color(0xffffffff),
    onSecondary: Color(0xffffffff),
    onSurface: Color(0xff000000),
    onBackground: Color(0xff000000),
    onError: Color(0xffffffff),
    brightness: Brightness.light,
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Color(0xffff7469),
    secondary: Color(0xff067A6F),
    surface: Color(0xFF055063),
    background: Color(0xffffffff),
    error: Color(0xffb00020),
    onPrimary: Color(0xffffffff),
    onSecondary: Color(0xffffffff),
    onSurface: Color(0xff000000),
    onBackground: Color(0xff000000),
    onError: Color(0xffffffff),
    brightness: Brightness.light,
  ),
);
