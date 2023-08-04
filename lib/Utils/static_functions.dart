import 'package:flutter/material.dart';

/// This class is used to define all static functions
class StaticFunctions {
  /// this function return text color(black or white) based on the background
  /// estimated brightness

  static Color textColorForBackground(Color backgroundColor) {
    const double conditionLimit = 0.7;

    return backgroundColor.computeLuminance() > conditionLimit
        ? Colors.black
        : Colors.white;
  }
}
