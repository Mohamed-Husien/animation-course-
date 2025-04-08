import 'package:flutter/material.dart';

class CustomAnimatedPositioned extends StatefulWidget {
  const CustomAnimatedPositioned({super.key});

  @override
  State<CustomAnimatedPositioned> createState() =>
      _CustomAnimatedPositionedState();
}

class _CustomAnimatedPositionedState extends State<CustomAnimatedPositioned> {
  double spaceLeft = 0.0;
  double spaceRight = 0.0;
  double spaceBottom = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("AnimatedPositioned"),
      ),
      body: Stack(
        children: [
          Container(
            height: 500,
            color: Colors.red,
          ),
          AnimatedPositionedDirectional(
            //useful when app contain more than one language for example Arabic and English
            curve: Curves.bounceInOut,
            start: spaceLeft,
            top: spaceBottom,
            duration: const Duration(seconds: 2),
            child: InkWell(
              onDoubleTap: () {
                spaceLeft = 0.0;
                spaceRight = 0.0;
                spaceBottom = 0.0;
                setState(() {});
              },
              onTap: () {
                spaceLeft = 200;
                spaceBottom = 200;
                setState(() {});
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
