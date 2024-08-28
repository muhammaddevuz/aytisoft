import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static Color getPrimaryColor(BuildContext context) {
    final isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return isDarkMode ? Colors.white : Colors.black;
  }

  static Color getAppBarColor(BuildContext context) {
    final isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return isDarkMode ? Colors.black : Colors.blue; 
  }

  static Color getTextColor(BuildContext context) {
    final isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return isDarkMode ? Colors.white : Colors.black; 
  }

}
