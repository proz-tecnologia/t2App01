import 'dart:developer';

import 'package:flutter/material.dart';

import '../../helpers/utils/input_masks.dart';
import '../../helpers/utils/validators.dart';
import '../../widgets/custom_text_field.dart';
import '../home/widgets/custom_elevated_button.dart';
import '../home/widgets/input_password_widget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _mailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _mailController.dispose();
    _cpfController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  CustomTextFormField(
                    label: 'Nome',
                    controller: _nameController,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),

                  /// Telefone
                  CustomTextFormField(
                    label: 'Telefone',
                    textInputType: const TextInputType.numberWithOptions(),
                    hintText: '31 9999-9999',
                    controller: _phoneController,
                    inputFormatters: [
                      CustomInputFormatters.phoneMaskFormatter,
                    ],
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),

                  /// E-mail
                  CustomTextFormField(
                    label: 'email',
                    suffix: InkWell(
                      child: const Icon(
                        Icons.clear,
                        color: Colors.black,
                      ),
                      onTap: () => _mailController.clear(),
                    ),
                    controller: _mailController,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'example@example.com',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),

                  /// CPF
                  CustomTextFormField(
                    label: 'CPF',
                    controller: _cpfController,
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
                  PasswordTextField(
                    controller: _passwordController,
                    confirmPassword: _confirmPasswordController.text,
                  ),
                  PasswordTextField(
                    controller: _confirmPasswordController,
                    confirmPassword: _passwordController.text,
                  ),

                  ElevatedButton(
                    onPressed: _formKey.currentState != null &&
                            _formKey.currentState!.validate()
                        ? () {
                            FocusScope.of(context).unfocus();
                            log(_nameController.value.text);
                            log(_phoneController.value.text);
                            log(_mailController.value.text);
                            log(_cpfController.value.text);
                            log(_passwordController.value.text);
                            _nameController.clear();
                            _phoneController.clear();
                            _mailController.clear();
                            _cpfController.clear();
                            _passwordController.clear();
                          }
                        : null,
                    child: const Text(
                      'Cadastrar usuário',
                    ),
                  ),

                  CustomElevatedButton(
                    onPressed: _formKey.currentState != null &&
                            _formKey.currentState!.validate()
                        ? () {
                            FocusScope.of(context).unfocus();
                            log(_nameController.value.text);
                            log(_phoneController.value.text);
                            log(_mailController.value.text);
                            log(_cpfController.value.text);
                            log(_passwordController.value.text);
                          }
                        : null,
                  ),
                  CustomElevatedButton(
                    // onPressed: () => controller.addItem(),
                    onPressed: () {},
                  ),

                  GestureDetector(
                    child: const MaterialChildComponent(),
                    onTap: () {},
                    onDoubleTap: () {},
                    onLongPress: () {},
                  ),
                  // InkWell(
                  //   onTap: () {},
                  //   borderRadius: BorderRadius.circular(32.0),
                  //   highlightColor: Colors.orange,
                  //   splashColor: Colors.orange,
                  //   child: MaterialChildComponent(),
                  // ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.plus_one_outlined),
                    color: Colors.blue,
                    hoverColor: Colors.amber,
                    highlightColor: Colors.orange,
                  ),

                  /// Confirmação de senha
                  /// Aceite de termos de uso
                  /// Botão
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MaterialChildComponent extends StatelessWidget {
  const MaterialChildComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32.0),
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 40.0,
        decoration: BoxDecoration(
          // color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(32.0),
          gradient: const LinearGradient(
            colors: [
              Colors.black,
              Colors.orange,
              Colors.black,
            ],
            tileMode: TileMode.clamp,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.5, 0.9],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            Text(
              'Adicionar item',
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
