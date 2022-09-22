import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    this.url,
    this.size = 38.0,
  }) : super(key: key);

  final String? url;
  final double size;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
        image: url != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  url!,
                ),
              )
            : null,
      ),
      duration: const Duration(milliseconds: 400),
    );
  }
}
