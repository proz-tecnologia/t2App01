import '../../models/contact.dart';

const String photoUrl =
    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80';

class HomeController {
  HomeController() {
    jobTitles = contacts.map((element) => element.jobTitle).toSet();
    showedContacts = contacts;
  }

  String currentFilter = '';
  late List<Contact> showedContacts;

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

  late Set<String> jobTitles;

  List<Contact> contacts = [
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Front-End',
      name: 'Hugo Giovanni Henrique Araújo',
      age: 77,
      cpf: '518.455.700-81',
      rg: '43.110.019-6',
      birthday: '10/05/1945',
      gender: 'Masculino',
      email: 'hugo_giovanni_araujo@oxiteno.com',
      cep: '66077-295',
      address: 'Passagem Liberal',
      numberAddress: 414,
      city: 'Belém',
      state: 'PA',
      phoneNumber: '(91) 99220-5790',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Back-End',
      name: 'Priscila Isis Peixoto',
      age: 42,
      cpf: '106.277.355-17',
      rg: '11.745.207-5',
      birthday: '19/08/1980',
      gender: 'Feminino',
      email: 'priscila-peixoto98@taclog.com.br',
      cep: '22713-004',
      address: 'Estrada do Guerengue',
      numberAddress: 107,
      city: 'Rio de Janeiro',
      state: 'RJ',
      phoneNumber: '(21) 98911-6152',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Full-Stack',
      name: 'Diego Pedro da Luz',
      age: 61,
      cpf: '750.963.282-01',
      rg: '37.968.281-3',
      birthday: '22/01/1961',
      gender: 'Masculino',
      email: 'diego.pedro.daluz@jpmanager.com.br',
      cep: '61908-060',
      address: 'Rua Francisco Neves',
      numberAddress: 237,
      city: 'Maracanaú',
      state: 'CE',
      phoneNumber: '(85) 99537-4281',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Arquiteto de Software',
      name: 'Alessandra Francisca Agatha Rezende',
      age: 53,
      cpf: '536.546.700-08',
      rg: '27.625.213-5',
      birthday: '19/07/1969',
      gender: 'Feminino',
      email: 'alessandra_francisca_rezende@sefaz.am.gov.br',
      cep: '72312-607',
      address: 'Quadra QR 510 Conjunto 7',
      numberAddress: 268,
      city: 'Brasília',
      state: 'DF',
      phoneNumber: '(61) 99478-3496',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Tech Lead',
      name: 'Elias Carlos Eduardo Barbosa',
      age: 40,
      cpf: '207.042.001-98',
      rg: '37.133.555-3',
      birthday: '09/07/1982',
      gender: 'Masculino',
      email: 'elias-barbosa71@nine9.com.br',
      cep: '58402-600',
      address: 'Rua Adauto Travassos de Moura',
      numberAddress: 722,
      city: 'Campina Grande',
      state: 'PB',
      phoneNumber: '(83) 98756-0973',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Analista de Infra',
      name: 'Sabrina Isabelle Rayssa Galvão',
      age: 43,
      cpf: '056.588.265-19',
      rg: '37.584.197-0',
      birthday: '02/02/1979',
      gender: 'Feminino',
      email: 'sabrina_isabelle_galvao@msltecnologia.com.br',
      cep: '69099-814',
      address: 'Rua Hosana',
      numberAddress: 665,
      city: 'Manaus',
      state: 'AM',
      phoneNumber: '(92) 98596-6980',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'DevoOps',
      name: 'Mirella Sabrina da Paz',
      age: 34,
      cpf: '508.066.314-65',
      rg: '21.122.669-5',
      birthday: '18/06/1988',
      gender: 'Feminino',
      email: 'mirella.sabrina.dapaz@tigra.com.br',
      cep: '77063-478',
      address: 'Quadra T 32 Rua LO 11',
      numberAddress: 175,
      city: 'Palmas',
      state: 'TO',
      phoneNumber: '(63) 98885-1205',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Product Owner',
      name: 'Mariah Laura Santos',
      age: 34,
      cpf: '439.272.481-69',
      rg: '32.158.497-1',
      birthday: '23/04/1988',
      gender: 'Feminino',
      email: 'mariah.laura.santos@mrv.com.br',
      cep: '69067-512',
      address: 'Rua Uraria',
      numberAddress: 174,
      city: 'Manaus',
      state: 'AM',
      phoneNumber: '(92) 98738-3294',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Pentester',
      name: 'Alice Aline Oliveira',
      age: 43,
      cpf: '646.517.895-87',
      rg: '37.592.278-7',
      birthday: '10/09/1979',
      gender: 'Feminino',
      email: 'alice_aline_oliveira@supergasbras.com.br',
      cep: '58033-260',
      address: 'Rua Deputado José Rezende da Costa Filho',
      numberAddress: 139,
      city: 'João Pessoa',
      state: 'PB',
      phoneNumber: '(83) 99557-4768',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Full Stack',
      name: 'Andreia Luiza Betina Baptista',
      age: 78,
      cpf: '081.506.567-15',
      rg: '11.518.680-3',
      birthday: '23/02/1944',
      gender: 'Feminino',
      email: 'andreialuizabaptista@lanchesdahora.com.br',
      cep: '68906-630',
      address: 'Travessa São Francisco',
      numberAddress: 329,
      city: 'Macapá',
      state: 'AP',
      phoneNumber: '(96) 99274-0734',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'DevOps',
      name: 'Bryan Isaac Souza',
      age: 36,
      cpf: '610.261.470-42',
      rg: '14.606.198-6',
      birthday: '10/06/1986',
      gender: 'Masculino',
      email: 'bryan-souza95@lordello.com.br',
      cep: '22250-910',
      address: 'Praia de Botafogo 400',
      numberAddress: 375,
      city: 'Rio de Janeiro',
      state: 'RJ',
      phoneNumber: '(21) 99894-2667',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Arquiteto de Software',
      name: 'Letícia Rayssa Isadora Assis',
      age: 25,
      cpf: '237.411.102-48',
      rg: '15.945.695-2',
      birthday: '18/06/1997',
      gender: 'Feminino',
      email: 'leticia.rayssa.assis@fulltransport.com.br',
      cep: '59625-440',
      address: 'Rua das Oiticicas',
      numberAddress: 861,
      city: 'Mossoró',
      state: 'RN',
      phoneNumber: '(84) 98317-9571',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Tech Lead',
      name: 'Teresinha Rosa Barros',
      age: 74,
      cpf: '580.778.554-15',
      rg: '34.397.923-8',
      birthday: '25/07/1948',
      gender: 'Feminino',
      email: 'teresinha_barros@agrosb.com.br',
      cep: '02938-000',
      address: 'Avenida Raimundo Pereira de Magalhães',
      numberAddress: 448,
      city: 'São Paulo',
      state: 'SP',
      phoneNumber: '(11) 99124-7567',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Analista de Segurança',
      name: 'Clarice Benedita Carolina Carvalho',
      age: 42,
      cpf: '768.515.643-19',
      rg: '32.495.432-3',
      birthday: '02/02/1980',
      gender: 'Feminino',
      email: 'clarice_carvalho@redex.com.br',
      cep: '74890-390',
      address: 'Rua 18 Unidade 201',
      numberAddress: 338,
      city: 'Goiânia',
      state: 'GO',
      phoneNumber: '(62) 99510-2331',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Pentester',
      name: 'Adriana Clara Maya Brito',
      age: 70,
      cpf: '975.741.458-14',
      rg: '27.859.853-5',
      birthday: '01/04/1952',
      gender: 'Feminino',
      email: 'adriana-brito74@terapeutaholistica.com.br',
      cep: '28894-740',
      address: 'Rua Interna Quatro',
      numberAddress: 779,
      city: 'Rio das Ostras',
      state: 'RJ',
      phoneNumber: '(22) 99537-5861',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Front-End',
      name: 'Vera Luana Catarina Gomes',
      age: 53,
      cpf: '240.815.222-43',
      rg: '26.533.363-5',
      birthday: '15/01/1969',
      gender: 'Feminino',
      email: 'vera_luana_gomes@etec.sp.gov.br',
      cep: '65093-312',
      address: 'Travessa dos Vieiras',
      numberAddress: 364,
      city: 'São Luís',
      state: 'MA',
      phoneNumber: '(98) 99612-0744',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Back-End',
      name: 'Vicente Carlos Raul Corte Real',
      age: 48,
      cpf: '087.745.603-87',
      rg: '19.520.479-7',
      birthday: '23/06/1974',
      gender: 'Masculino',
      email: 'vicente-cortereal88@pisbrasil.com.br',
      cep: '79108-315',
      address: 'Rua Sebastião Andrade Pinho',
      numberAddress: 346,
      city: 'Campo Grande',
      state: 'MS',
      phoneNumber: '(67) 99621-3997',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Analista de Infra',
      name: 'Louise Lúcia Patrícia Costa',
      age: 53,
      cpf: '918.317.088-09',
      rg: '23.855.494-6',
      birthday: '20/08/1969',
      gender: 'Feminino',
      email: 'louise.lucia.costa@pozzer.net',
      cep: '73807-553',
      address: 'Rua 2',
      numberAddress: 179,
      city: 'Formosa',
      state: 'GO',
      phoneNumber: '(61) 99687-3757',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Front-End',
      name: 'Rita Isis Alves',
      age: 60,
      cpf: '863.220.284-72',
      rg: '29.240.616-2',
      birthday: '03/07/1962',
      gender: 'Feminino',
      email: 'rita_isis_alves@unimedara.com.br',
      cep: '49087-606',
      address: 'Rua Quatro',
      numberAddress: 317,
      city: 'Aracaju',
      state: 'SE',
      phoneNumber: '(79) 98421-6702',
    ),
    Contact(
      photoUrl: photoUrl,
      jobTitle: 'Desenvolvedor Back-End',
      name: 'Aurora Antonella Gonçalves',
      age: 76,
      cpf: '690.131.033-16',
      rg: '17.659.742-6',
      birthday: '11/03/1946',
      gender: 'Feminino',
      email: 'aurora_antonella_goncalves@cenia.com.br',
      cep: '69057-077',
      address: 'Rua André Lopes Albuquerque',
      numberAddress: 927,
      city: 'Manaus',
      state: 'AM',
      phoneNumber: '(92) 99822-6726',
    ),
  ];
}
