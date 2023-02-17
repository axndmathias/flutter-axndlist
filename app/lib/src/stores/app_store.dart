import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      saveThemeMode();
    }
  }

  void saveThemeMode() {
    // TODO : Salvar od dados na base local
  }
}
