import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6F3996);

const List<Color> _colorsTheme = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme(
      {this.selectedColor = 0}) //las assert son validaciones del constructor
      : assert(selectedColor >= 0 && selectedColor <= _colorsTheme.length - 1,
            'Colors must be between 0 to ${_colorsTheme.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
