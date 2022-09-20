import 'package:flutter/material.dart';

import 'custom_circle.dart';

class MyGoal extends StatelessWidget {
  const MyGoal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomCircle(
      size: 125.0,
      color: Colors.green,
      child: Center(
        child: CustomCircle(
          size: 100.0,
          color: Colors.purple,
          child: Center(
            child: CustomCircle(
              size: 75.0,
              color: Colors.yellow,
              child: Center(
                child: CustomCircle(
                  size: 50,
                  color: Colors.grey,
                  child: Center(
                    child: CustomCircle(
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
