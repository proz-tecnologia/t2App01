import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 38.0,
        height: 38.0,
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
      ),
    );
  }
}
