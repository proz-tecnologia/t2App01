import 'package:cpf_cnpj_validator/cpf_validator.dart';

class Validators {
  static String? validateCpf(String? cpf) {
    if (CPFValidator.isValid(cpf)) {
      ///Quando o valor está correto, retornamos null
      return null;
    } else {
      /// Quando o valor é inválido, retornamos a mensagem de erro
      return "CPF inválido";
    }
  }

  static String? validatePassword(String? password) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (password == null || password.isEmpty) {
      ///Quando o valor está correto, retornamos null
      return 'Necessário preencher a senha!';
    } else if (!regex.hasMatch(password)) {
      /// Quando o valor é inválido, retornamos a mensagem de erro
      return "Sua senha precisa seguir as regras!";
    } else if (password.length < 8) {
      return "Senha recisar conter no mínimo 8 digitos";
    }
    return null;
  }
}