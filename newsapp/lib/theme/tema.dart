import 'package:flutter/material.dart';

final miTema = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(selectedItemColor: Colors.red),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red));
