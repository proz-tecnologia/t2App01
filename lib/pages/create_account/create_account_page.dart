import 'package:flutter/material.dart';

import '../../helpers/utils/input_masks.dart';
import '../../helpers/utils/validators.dart';
import '../../widgets/custom_text_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            onChanged: () {
              setState(() {});
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Titulo
                Text(
                  'Registre-se no contactApp',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8.0),

                /// Nome
                const CustomTextFormField(
                  label: 'Nome',
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16.0),

                /// Telefone
                CustomTextFormField(
                  label: 'Telefone',
                  textInputType: const TextInputType.numberWithOptions(),
                  hintText: '31 9999-9999',
                  inputFormatters: [
                    CustomInputFormatters.phoneMaskFormatter,
                  ],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16.0),

                /// E-mail
                const CustomTextFormField(
                  label: 'email',
                  textInputType: TextInputType.emailAddress,
                  hintText: 'example@example.com',
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16.0),

                /// CPF
                CustomTextFormField(
                  label: 'CPF',
                  textInputType: TextInputType.number,
                  hintText: '123.456.789-10',
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  inputFormatters: [
                    CustomInputFormatters.cpfMask,
                  ],
                  validator: (cpf) => Validators.validateCpf(cpf),
                ),
                const SizedBox(height: 16.0),

                /// Senha
                const PasswordTextField(),

                ElevatedButton(
                  onPressed: _formKey.currentState != null &&
                          _formKey.currentState!.validate()
                      ? () {}
                      : null,
                  child: const Text(
                    'Cadastrar usuário',
                  ),
                ),

                /// Confirmação de senha
                /// Aceite de termos de uso
                /// Botão
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool visible = true;

  IconData get currentIcon => visible ? Icons.visibility : Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: 'Senha',
      textInputAction: TextInputAction.next,
      helperText:
          'Sua senha deve conter, números, letras, caracteres especiais e ter no mínimo, 8 digitos',
      helperMaxLines: 2,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: Validators.validatePassword,
      obscureText: visible,
      suffix: InkWell(
        onTap: () {
          setState(() {
            visible = !visible;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(currentIcon),
        ),
      ),
    );
  }
}
