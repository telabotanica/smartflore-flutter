import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontFamily: 'SourceSansPro'),
    displayMedium: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'SourceSansPro'),
    displaySmall: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'SourceSansPro'),
    headlineMedium: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 16,
        fontWeight: FontWeight.w800,
        fontFamily: 'SourceSansPro'),
    headlineSmall: TextStyle(
        color: Color(0xffff7469),
        fontSize: 17,
        height: 1.2,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w600,
        fontFamily: 'SourceSansPro'),
    titleLarge: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: 'SourceSansPro'),
    bodyLarge: TextStyle(
        color: Color(0xFF12161E),
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontFamily: 'SourceSansPro'),
    bodyMedium: TextStyle(
        color: Color(0xFF647883),
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'SourceSansPro'),
    bodySmall: TextStyle(
        color: Color(0xFF647883),
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'SourceSansPro'),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xffff7469),
    secondary: Color(0xFFffe4e8),
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
  colorScheme: const ColorScheme(
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
