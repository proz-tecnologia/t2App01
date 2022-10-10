import 'package:flutter_app/pages/home/home_state.dart';

import '../../helpers/data/contact_data.dart';
import '../../models/contact.dart';

class HomeController {
  HomeController() {
    HomeStateSuccess(
      contacts: contacts,
    );

    showedContacts = contacts;
  }

  HomeState state = HomeStateLoading();

  String currentFilter = '';

  get showedContacts => null;

  Future<void> getData() async {
    state = HomeStateLoading();

    await Future.delayed(const Duration(seconds: 5));

    state = HomeStateSuccess(
      contacts: contacts,
    );
  }
}
