import 'package:flutter/material.dart';

class Glasscontainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;

  const Glasscontainer({
    super.key,
    this.width = 200,
    this.height = 100,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: child,
    );
  }
}
