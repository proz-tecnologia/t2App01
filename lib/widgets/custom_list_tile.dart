import 'package:flutter/material.dart';

import 'profile_picture.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.profilePictureSize = 38.0,
    required this.title,
    required this.subtitle,
    this.photoUrl,
    this.trailing,
  });

  final double profilePictureSize;
  final String title;
  final String subtitle;
  final String? photoUrl;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (photoUrl != null && photoUrl!.isNotEmpty)
              ProfilePicture(
                url: photoUrl,
                size: profilePictureSize,
              ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing != null ? trailing! : const SizedBox.shrink(),
      ],
    );
  }
}
