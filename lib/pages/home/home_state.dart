import '../../models/contact.dart';

abstract class HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateSuccess extends HomeState {
  final List<Contact> contacts;

  String currentFilter = '';
  List<Contact> showedContacts = <Contact>[];
  Set<String> jobTitles = <String>{};

  HomeStateSuccess({
    required this.contacts,
  }) {
    jobTitles = showedContacts.map((e) => e.jobTitle).toSet();
  }

  void showFilteredList(String value) {
    if (value.isEmpty || value == currentFilter) {
      currentFilter = '';
      showedContacts = contacts;
    } else if (value.isNotEmpty && value != currentFilter) {
      currentFilter = value;
      showedContacts =
          contacts.where((element) => element.jobTitle == value).toList();
    }
  }
}

class HomeStateError extends HomeState {}
