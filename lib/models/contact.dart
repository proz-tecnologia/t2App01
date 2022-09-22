class Contact {
  final String name;
  final String phoneNumber;
  final String photoUrl;
  final String email;
  final String jobTitle;
  final int? age;
  final String? cpf;
  final String? rg;
  final String? birthday;
  final String gender;
  final String? cep;
  final String? address;
  final int? numberAddress;
  final String? city;
  final String? state;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.photoUrl,
    required this.email,
    required this.jobTitle,
    this.age,
    this.cpf,
    this.rg,
    this.birthday,
    required this.gender,
    this.cep,
    this.address,
    this.numberAddress,
    this.city,
    this.state,
  });
}
