import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_task/Utils/static_functions.dart';
import 'package:job_task/Utils/text_styles.dart';

/// Random Class Generator

class RandomColorGenerator extends StatefulWidget {
  /// Random Class Generator Constructor

  const RandomColorGenerator({super.key});

  @override
  State<RandomColorGenerator> createState() => _RandomColorGeneratorState();
}

class _RandomColorGeneratorState extends State<RandomColorGenerator> {
  int randomColor = Random().nextInt(0xffffffff);
  double textFontSize = 50;
  int maxColorLimit = 0xffffffff;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(randomColor),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          randomColor = Random().nextInt(maxColorLimit);
          setState(() => {});
        },
        child: Center(
          child: Text(
            'Hello there ',
            style: TextStyles.blackBoldTextStyle(
              color: StaticFunctions.textColorForBackground(
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
