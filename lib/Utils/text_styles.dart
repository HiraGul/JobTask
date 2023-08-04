import 'package:flutter/material.dart';

/// Application TextStyles
class TextStyles {
  /// method to get black bold TextStyle

  static TextStyle blackBoldTextStyle({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }
}
