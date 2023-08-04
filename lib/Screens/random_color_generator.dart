import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_task/Utils/text_styles.dart';

/// Random Class Generator
class RandomColorGenerator extends StatefulWidget {
  /// Random Class Generator Constructor
  const RandomColorGenerator({super.key});

  @override
  State<RandomColorGenerator> createState() => _RandomColorGeneratorState();
}

class _RandomColorGeneratorState extends State<RandomColorGenerator> {
  Color _textColorForBackground(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white;
    }

    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    final randomColor = Random().nextInt(0xffffffff);
    const double textFontSize = 30;

    return Scaffold(
      backgroundColor: Color(randomColor),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() => {});
        },
        child: Center(
          child: Text(
            'Hello there ',
            style: TextStyles.blackBoldTextStyle(
              color: _textColorForBackground(
                Color(randomColor),
              ),
              fontSize: textFontSize,
            ),
          ),
        ),
      ),
    );
  }
}
