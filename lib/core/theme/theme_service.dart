import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  // Load theme
  ThemeMode get theme =>
      _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    bool darkMode = !_loadTheme();
    saveTheme(darkMode);
    Get.changeThemeMode(darkMode ? ThemeMode.dark : ThemeMode.light);
  }
}
