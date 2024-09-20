import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF920D99);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.red,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;
  
  AppTheme({this.selectedColor = 0})
    :assert(selectedColor >= 0 && selectedColor <= _colorThemes.length-1,
    "Color must be equal or greater than 0 & lower than ${_colorThemes.length}");

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}