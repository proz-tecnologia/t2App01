import 'package:flutter/material.dart';

import 'profile_picture.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.jobTitle,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String jobTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.shade200,
        ),
        height: 45.0,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ProfilePicture(
                  url: imageUrl,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name),
                      Text(
                        jobTitle,
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
