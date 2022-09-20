import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';

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
          children: controller.contacts
              .map(
                (e) => ContactListTile(
                  imageUrl: e.photoUrl,
                  name: e.name,
                  jobTitle: e.jobTitle,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
