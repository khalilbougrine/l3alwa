import 'package:chat_app/themes/dark_mode.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Initial theme (light mode by default)
  ThemeData _themeData = lightMode;

  // Getter for the current theme
  ThemeData get themeData => _themeData;

  // Getter to check if the current theme is dark mode
  bool get isDarkMode => _themeData == DarkMode;

  // Setter for theme data
  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Method to toggle between light and dark themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      setTheme(DarkMode);
    } else {
      setTheme(lightMode);
    }
  }
}
