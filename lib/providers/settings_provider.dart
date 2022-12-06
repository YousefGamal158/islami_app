import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.system;
  String currentLocale = 'en';

  void changeTheme(ThemeMode newMode) {
    currentTheme = newMode;
    notifyListeners();
  }

  void changeLocale(String newLocale) {
    currentLocale == newLocale;
    notifyListeners();
  }

  String getMainBackgroundImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/main_background_dark.png';
  }

  String getSebhaHeadImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/sebha_head_light.png'
        : 'assets/images/sebha_head_dark.png';
  }

  String getSebhaBodyImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/sebha_body_light.png'
        : 'assets/images/sebha_body_dark.png';
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }
}
