class Contato {
  final String name;
  final String? phoneNumber;
  final String photoUrl;
  final String? email;
  final String jobTitle;

  Contato({
    required this.name,
    this.phoneNumber,
    required this.photoUrl,
    this.email,
    required this.jobTitle,
  });
}
