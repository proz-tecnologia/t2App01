import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';
import 'package:flutter_app/widgets/custom_list_tile.dart';
import 'package:flutter_app/widgets/profile_picture.dart';

import '../../widgets/contact_list_tile.dart';

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
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(4.0),
                child: ListTile(
                  leading: ProfilePicture(
                    url: controller.contacts[0].photoUrl,
                  ),
                  title: Text(
                    controller.contacts[0].name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    controller.contacts[0].jobTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomListTile(
                    photoUrl: controller.contacts[0].photoUrl,
                    title: controller.contacts[0].name,
                    subtitle: controller.contacts[0].jobTitle,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              ...controller.contacts
                  .map(
                    (e) => ContactListTile(
                      contact: e,
                    ),
                  )
                  .toList(),
              const SizedBox(
                height: 4.0,
              ),
            ]),
      ),
    );
  }
}
