import 'package:flutter/material.dart';
import 'package:flutter_application/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  static ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;
  set themeData(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
