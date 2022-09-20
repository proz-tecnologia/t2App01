import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final double size;
  final Color color;
  final Widget? child;

  const CustomCircle({
    Key? key,
    required this.size,
    required this.color,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 180 * 6.0,
      child: Container(
        height: size * 2,
        width: size * 2,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: color,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(24.0),
            left: Radius.circular(4.0),
          ),
        ),
        child: child,
      ),
    );
  }
}
