import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/widgets/confirm_create_account_dialog.dart';

import '../../helpers/utils/input_masks.dart';
import '../../helpers/utils/validators.dart';
import '../../widgets/custom_text_field.dart';
import '../home/widgets/confirm_create_account_bottom_sheet.dart';
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

  final _cpfFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized()
        .addPersistentFrameCallback((timeStamp) {
      _nameController.text = 'Alencar Moreira';
      _phoneController.text = '+55 (31) 9999-9999';
      _mailController.text = 'alencar.moreira@prozedu.com.br';
      _cpfController.text = '728.675.440-84';
      setState(() {});
    });
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

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Form(
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
                        onFieldSubmitted: (_) => _cpfFocusNode.requestFocus(),
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
                        focusNode: _cpfFocusNode,
                        textInputType: TextInputType.numberWithOptions(),
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
                        onFieldSubmitted: (_) {
                          _confirmPasswordFocusNode.requestFocus();
                        },
                      ),
                      PasswordTextField(
                        controller: _confirmPasswordController,
                        confirmPassword: _passwordController.text,
                        focusNode: _confirmPasswordFocusNode,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      FocusScope.of(context).unfocus();
                      showModalBottomSheet(
                        context: context,
                        builder: (_) => ConfirmCreateAccountBottomSheet(
                          name: _nameController.text,
                          phone: _phoneController.text,
                          mail: _mailController.text,
                          cpf: _cpfController.text,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                          ),
                        ),
                        isDismissible: false,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
