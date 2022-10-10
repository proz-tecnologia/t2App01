import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_controller.dart';
import 'package:flutter_app/widgets/contact_list_tile.dart';

import '../../models/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final scrollController = PrimaryScrollController.of(context)!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: controller.showedContacts.length,
        controller: scrollController,
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          if (index == 0) {
            return FirstContactListTile(
              contact: controller.showedContacts[index],
              scrollController: scrollController,
              jobs: controller.jobTitles,
              currentFilter: controller.currentFilter,
              onChipPressed: (value) {
                setState(() {
                  controller.showFilteredList(value);
                });
                Navigator.named
              },
            );
          }
          if (index == controller.showedContacts.length - 1) {
            return LastContactListTile(
              contact: controller.showedContacts[index],
              scrollController: scrollController,
            );
          }

          return ContactListTile(
            contact: controller.showedContacts[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_downward),
        onPressed: () {
          scrollController.animateTo(
            scrollController.offset +
                scrollController.position.viewportDimension,
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}

class ScreenArguments {
  final int name;
  final int parameters;

  ScreenArguments({required this.name, required this.parameters,});
}
class FirstContactListTile extends StatelessWidget {
  const FirstContactListTile({
    Key? key,
    required this.contact,
    required this.jobs,
    required this.scrollController,
    required this.onChipPressed,
    required this.currentFilter,
  }) : super(key: key);

  final Contact contact;
  final ScrollController scrollController;
  final Set<String> jobs;
  final String currentFilter;
  final Function(String) onChipPressed;

  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Column(
      children: [
        Wrap(
          children: List.generate(
            jobs.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: InkWell(
                onTap: () {
                  onChipPressed(jobs.elementAt(index));
                },
                child: Chip(
                  label: Text(jobs.elementAt(index)),
                  backgroundColor: jobs.elementAt(index) == currentFilter
                      ? Colors.blue
                      : null,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Ir para o final',
          ),
        ),
        ContactListTile(
          contact: contact,
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}

class LastContactListTile extends StatelessWidget {
  const LastContactListTile({
    Key? key,
    required this.contact,
    required this.scrollController,
  }) : super(key: key);

  final Contact contact;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactListTile(
          contact: contact,
        ),
        const SizedBox(height: 8.0),
        Center(
          child: Text(
            'Todos os itens foram visualizados',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        TextButton(
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Voltar para o topo',
          ),
        )
      ],
    );
  }
}






 // children: <Widget>[
      //   Card(
      //     margin: const EdgeInsets.all(4.0),
      //     child: ListTile(
      //       leading: ProfilePicture(
      //         url: controller.contacts[0].photoUrl,
      //       ),
      //       title: Text(
      //         controller.contacts[0].name,
      //         style: Theme.of(context).textTheme.titleMedium,
      //       ),
      //       subtitle: Text(
      //         controller.contacts[0].jobTitle,
      //         style: Theme.of(context).textTheme.labelMedium,
      //       ),
      //     ),
      //   ),
      //   Card(
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: CustomListTile(
      //         photoUrl: controller.contacts[0].photoUrl,
      //         title: controller.contacts[0].name,
      //         subtitle: controller.contacts[0].jobTitle,
      //       ),
      //     ),
      //   ),
      //   const SizedBox(
      //     height: 4.0,
      //   ),
      //   ...controller.contacts
      //       .map(
      //         (e) => ContactListTile(
      //           contact: e,
      //         ),
      //       )
      //       .toList(),
      //   const SizedBox(
      //     height: 4.0,
      //   ),
      // ],
      // ),







/*
Wrap(
                children: controller.contacts
                    .map(
                      (e) => ProfileSquare(
                        contact: e,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 4.0,
              ),
              */