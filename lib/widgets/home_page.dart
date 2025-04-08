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
  Color textColor = Colors.black;
  double fz = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onHover: (value) {
            if (value == true) {
              fz = 12;
              textColor = Colors.yellow;
              setState(() {});
            } else if (value == false) {
              fz = 8;
              textColor = Colors.black;
              setState(() {});
            }
          },
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
            child: Center(
              child: AnimatedDefaultTextStyle(
                  curve: Curves.bounceInOut,
                  style: TextStyle(color: textColor, fontSize: fz),
                  duration: const Duration(seconds: 2),
                  child: const Text("Mohamed hussien flutter developer")),
            ),
          ),
        ),
      ),
    );
  }
}
