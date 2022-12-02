import 'package:flutter/material.dart';

class MyTheme {
  static const LightPrimary = Color(0xFFB7935F);
  static final ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: LightPrimary,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: "Elmessiri")),
    textTheme: TextTheme(
      headline3: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 22,
        color: Colors.white,
      ),
      headline2:
          TextStyle(fontFamily: 'ElMessiri', fontSize: 22, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 36, color: Colors.black),
        unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
        selectedLabelStyle:
            TextStyle(fontFamily: "Elmessiri", color: Colors.black),
        selectedItemColor: Colors.black),
  );
}
