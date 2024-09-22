import 'package:flutter/material.dart';
import 'package:twitter_app/themes/light_mode.dart';
import 'package:twitter_app/themes/dark_mode.dart';

/* THEME PROVIDER

This helps us to change the app mode between dark and light mode

*/

class ThemeProvider with ChangeNotifier {
  // initislly, set it as light mode

  ThemeData _themeData = lightMode;

  // get the current theme mode
  ThemeData get themeData => _themeData;

  // is it dark mode currently?

  bool get isDarkTheme => _themeData == darkMode;

  // set the theme
  set ThemeData(ThemeData themeData) {
    _themeData = themeData;
  }

  // update UI
  @override
  void notifyListeners() {
    super.notifyListeners();
  }

  // toggle to change between dark and light mnode

  void toggleTheme() {
    if (themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
  }
}
