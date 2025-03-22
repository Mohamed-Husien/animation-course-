import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double w = 100;
  double h = 100;
  Color containerColor = Colors.red;
  double br = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            w = 100;
            h = 100;
            containerColor = Colors.red;
            br = 0;
            setState(() {});
          },
          onTap: () {
            w = 200;
            h = 200;
            containerColor = Colors.blue;
            br = 32;
            setState(() {});
          },
          child: AnimatedContainer(
            curve: Curves.bounceInOut,
            width: w,
            height: h,
            duration: const Duration(seconds: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(br),
              color: containerColor,
            ),
          ),
        ),
      ),
    );
  }
}
