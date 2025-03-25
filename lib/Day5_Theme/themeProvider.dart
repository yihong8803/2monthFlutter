import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_month_flutter/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData themeData = lightMode;
  ThemeData get newThemeData => themeData;

  set setThemeData(ThemeData newthemeData) {
    themeData = newthemeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (newThemeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
    notifyListeners();
  }
}
