import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GotafColors {
  static final primary = Color(0xFF73c59c);
  static final primaryLight = Color(0xFF95e6a9);
  static final primaryLighter = Color(0xFFebf1f0);
  static final primaryDark = Color(0xFF458076);
  static final primaryInactive = Color(0xFFbbedc2);

  static final secondary = Color(0xFFf1ce49);
  static final secondaryDark = Color(0xFFe8a144);
  static final tertiary = Color(0xFF42475e);
  static final greyText = Color(0xFFc3c4c6);
  static final greyLigth = Color(0xFFebf1f0);

  static final homepageTitle = Color(0xFF03334f);
  static final white = Color(0xFFFFFFFF);
}

// Light theme data
final lightTheme = ThemeData(
    primaryColor: GotafColors.primaryDark,
    textTheme: GoogleFonts.montserratTextTheme().apply(
      displayColor: GotafColors.tertiary,
      bodyColor: GotafColors.tertiary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: GotafColors.secondary, width: 2),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(),
    ));
