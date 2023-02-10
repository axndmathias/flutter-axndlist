import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final lightThheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primary,
    foregroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _lightColorScheme.primaryContainer,
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: _darkColorScheme.primaryContainer,
  ),
);
