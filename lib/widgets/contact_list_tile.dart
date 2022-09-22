import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'profile_picture.dart';

class ContactListTile extends StatefulWidget {
  const ContactListTile({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  State<ContactListTile> createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  bool _isOpened = false;

  void changeState() {
    /// _isOpened = !_isOpened;
    /// true      = !true;
    /// true      = false;
    /// _isOpened = false;
    setState(() {
      _isOpened = !_isOpened;
    });
  }

  TextTheme get textTheme => Theme.of(context).textTheme;

  double get containerHeight => _isOpened ? 140.0 : 72.0;

  int get quarterTurns => _isOpened ? -3 : 3;

  double get profilePictureSize => _isOpened ? 55.0 : 38.0;

  double get opacity => _isOpened ? 1.0 : 0.0;

  CrossFadeState get fadeState =>
      _isOpened ? CrossFadeState.showSecond : CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      padding: EdgeInsets.zero,
      height: containerHeight,
      duration: const Duration(milliseconds: 400),
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: ProfilePicture(
                url: widget.contact.photoUrl,
                size: profilePictureSize,
              ),
              title: Text(
                widget.contact.name,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                widget.contact.jobTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              trailing: RotatedBox(
                quarterTurns: quarterTurns,
                child: IconButton(
                  onPressed: changeState,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  iconSize: 12.0,
                ),
              ),
            ),
            // CustomListTile(
            //   photoUrl: widget.contact.photoUrl,
            //   title: widget.contact.name,
            //   subtitle: widget.contact.jobTitle,
            //   trailing:
            //   profilePictureSize: profilePictureSize,
            // ),
            Row(
              children: [
                SizedBox(
                  width: profilePictureSize,
                ),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 500),
                  firstChild: const SizedBox.shrink(),
                  secondChild: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Telefone : ${widget.contact.phoneNumber}',
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        'E-mail : ${widget.contact.email}',
                        style: textTheme.bodyText1,
                      ),
                      Text(
                        'Telefone : ${widget.contact.phoneNumber}',
                        style: textTheme.bodyText1,
                      ),
                    ],
                  ),
                  crossFadeState: fadeState,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
