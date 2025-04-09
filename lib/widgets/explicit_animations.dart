import 'package:flutter/material.dart';

class ExplicitAnimations extends StatefulWidget {
  const ExplicitAnimations({super.key});

  @override
  State<ExplicitAnimations> createState() => _ExplicitAnimationsState();
}

class _ExplicitAnimationsState extends State<ExplicitAnimations>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
        lowerBound: 100,
        upperBound: 200);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Explicit Animation"),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return InkWell(
                onDoubleTap: () {
                  animationController.reverse();
                },
                onTap: () {
                  animationController.forward();
                },
                child: Container(
                  color: Colors.black,
                  width: animationController.value,
                  height: animationController.value,
                  child: Center(
                    child: Text(
                      "Hello Mohamed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: animationController.value / 10,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
