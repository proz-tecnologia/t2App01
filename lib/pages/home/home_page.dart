import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';

import '../../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contatos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(number: "7"),
              CustomButton(number: "8"),
              CustomButton(number: "9"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(number: "4"),
              CustomButton(number: "5"),
              CustomButton(number: "6"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(number: "1"),
              CustomButton(number: "2"),
              CustomButton(number: "3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(number: "."),
              CustomButton(number: "0"),
              CustomButton(
                number: "=",
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
