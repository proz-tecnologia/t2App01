import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';
import 'package:flutter_app/widgets/profile_square.dart';

class HomePageGridView extends StatelessWidget {
  HomePageGridView({super.key});

  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contatos'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
        children:
            controller.contacts.map((e) => ProfileSquare(contact: e)).toList(),
      ),
    );
  }
}
