import 'package:animation_course_app/widgets/custom_animated_positioned.dart';
import 'package:animation_course_app/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CustomAnimatedPositioned());
  }
}
