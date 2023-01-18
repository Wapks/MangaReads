import 'package:flutter/material.dart';
import 'package:manga_reads/core/theme/theme_colors.dart';

class AppTheme {
  static ThemeData get data => ThemeData(
        primarySwatch: AppThemeColors.primary,
        primaryColor: AppThemeColors.primary,
        fontFamily: 'Montserrat',
        textTheme: textTheme,
        backgroundColor: AppThemeColors.background,
        scaffoldBackgroundColor: AppThemeColors.background,
        appBarTheme: appBarTheme,
        inputDecorationTheme: inputTheme,
        elevatedButtonTheme: elevatedButtonTheme,
      );

  static TextTheme get textTheme => const TextTheme(
        headline1: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: AppThemeColors.white, letterSpacing: -2.0),
        headline2: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, color: AppThemeColors.white, letterSpacing: -1.5),
        headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppThemeColors.white, letterSpacing: 0.05),
        headline4: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppThemeColors.white, letterSpacing: 0.15),
        headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppThemeColors.white, letterSpacing: 0.15),
        bodyText1: TextStyle(fontSize: 18, color: AppThemeColors.white, letterSpacing: 0.5),
        bodyText2: TextStyle(fontSize: 16, color: AppThemeColors.white, letterSpacing: 0.25),
        subtitle1: TextStyle(fontSize: 15, color: AppThemeColors.white),
        subtitle2: TextStyle(fontSize: 13, color: AppThemeColors.white),
        button: TextStyle(fontWeight: FontWeight.bold),
      );

  static AppBarTheme get appBarTheme => const AppBarTheme(
        backgroundColor: AppThemeColors.appBarBackground,
        centerTitle: false,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.1,
          overflow: TextOverflow.ellipsis,
        ),
      );

  static InputDecorationTheme get inputTheme => const InputDecorationTheme(
        isDense: true,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(18.0, 16.0, 4.0, 16.0),
        hintStyle: TextStyle(color: AppThemeColors.dimWhite),
        fillColor: AppThemeColors.surface,
        iconColor: AppThemeColors.dimWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: AppThemeColors.border, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: AppThemeColors.border, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: AppThemeColors.border, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.red),
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )),
        ),
      );
}
