import 'package:flutter/material.dart';
import 'package:job_task/Screens/random_color_generator.dart';

/// This widget is the root of your application

class RootFile extends StatelessWidget {
  /// Root Widget Constructor

  const RootFile({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomColorGenerator(),
    );
  }
}
