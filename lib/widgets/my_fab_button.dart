import 'dart:developer';

import 'package:flutter/material.dart';

class MyFabButton extends StatelessWidget {
  const MyFabButton({
    super.key,
    required this.onPressed,
  });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        log('Olá alunos');
        onPressed();
      },
      tooltip: 'Increment',
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add),
    );
  }
}
