import 'dart:developer';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String number;
  final Color? color;

  const CustomButton({
    required this.number,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.blueAccent,
      child: TextButton(
        onPressed: () {
          log("botão pressionado");
        },
        child: Text(
          number,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
