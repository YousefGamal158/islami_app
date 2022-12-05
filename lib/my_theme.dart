import 'package:flutter/material.dart';

class MyTheme {
  static const lightPrimary = Color(0xFFB7935F);
  static const darkPrimary = Color(0xFF141A2E);
  static const asfr = Color(0xFFFACC1D);
  static final ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ))),
    cardColor: Colors.white,
    accentColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightPrimary,
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
        color: Colors.black,
      ),
      headline2:
          TextStyle(fontFamily: 'ElMessiri', fontSize: 24, color: Colors.black),
      headline1:
          TextStyle(fontFamily: 'Quran1', fontSize: 19, color: Colors.black),
      headline4:
          TextStyle(fontFamily: 'ElMessiri', fontSize: 19, color: Colors.black),
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
  static final ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ))),
    cardColor: darkPrimary,
    accentColor: asfr,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkPrimary,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontFamily: "Elmessiri"),
        iconTheme: IconThemeData(color: Colors.white)),
    textTheme: TextTheme(
      headline3: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 22,
        color: Colors.white,
      ),
      headline2:
          TextStyle(fontFamily: 'ElMessiri', fontSize: 22, color: Colors.white),
      headline1:
          TextStyle(fontFamily: 'Quran1', fontSize: 19, color: Colors.white),
      headline4:
          TextStyle(fontFamily: 'ElMessiri', fontSize: 19, color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 36, color: asfr),
        unselectedIconTheme: IconThemeData(size: 24, color: Colors.white),
        selectedLabelStyle: TextStyle(fontFamily: "Elmessiri", color: asfr),
        selectedItemColor: asfr),
  );
}
