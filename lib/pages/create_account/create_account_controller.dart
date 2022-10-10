import 'package:flutter/material.dart';
import 'package:flutter_app/models/contact.dart';

import 'create_account_states.dart';

// enum CreateAccountState { empty, loading, success, error }

class CreateAccountController {
  CreateAccountController({
    required this.onUpdate,
  });

  final VoidCallback onUpdate;

  CreateAccountState state = CreateAccountStateEmpty();

  void updateState(CreateAccountState _state) {
    state = _state;
    onUpdate();
  }

  void setEmpty() => updateState(CreateAccountStateEmpty());

  Future<void> createAccount({
    required String name,
    required String phone,
    required String mail,
    required String cpf,
    required String password,
  }) async {
    try {
      updateState(CreateAccountStateLoading());

      await Future.delayed(const Duration(seconds: 3));

      updateState(CreateAccountStateSuccess());
    } catch (e) {
      updateState(
        CreateAccountStateError(
          exception: Exception('CPF inválido!'),
          message: 'C.P.F inválido!',
        ),
      );
    }
  }
}
