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
          AnimatedPositioned(
            curve: Curves.bounceInOut,
            left: spaceLeft,
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
                spaceLeft = 100;
                spaceBottom = 100;
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
