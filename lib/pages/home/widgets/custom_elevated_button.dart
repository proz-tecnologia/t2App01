import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.redAccent;
            }
            if (states.contains(MaterialState.disabled)) {
              return Colors.grey;
            }
            if (states.contains(MaterialState.pressed)) {
              return Colors.orange;
            }
            return null; // Defer to the widget's default.
          },
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.redAccent;
            }
            if (states.contains(MaterialState.disabled)) return Colors.grey;
            if (states.contains(MaterialState.pressed)) return Colors.black;
            return null; // Defer to the widget's default.
          },
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            MediaQuery.of(context).size.width * 0.5,
            40,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.add),
          Text('Adicionar item'),
        ],
      ),
    );
  }
}
