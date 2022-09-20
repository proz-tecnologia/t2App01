import 'package:flutter/material.dart';

import 'custom_circle.dart';

class CustomCircleFifty extends StatelessWidget {
  const CustomCircleFifty({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomCircle(
      size: 50.0,
      color: color,
    );
  }
}
