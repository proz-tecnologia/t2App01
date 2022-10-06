import 'package:flutter/material.dart';

import '../../../helpers/utils/validators.dart';
import '../../../widgets/custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required this.controller,
    required this.confirmPassword,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction,
  }) : super(key: key);

  final TextEditingController controller;
  final String confirmPassword;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

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
      controller: widget.controller,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      focusNode: widget.focusNode,
      onFieldSubmitted: widget.onFieldSubmitted,
      helperText:
          'Sua senha deve conter, números, letras, caracteres especiais e ter no mínimo, 8 digitos',
      helperMaxLines: 2,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => Validators.validatePassword(
        value,
        widget.confirmPassword,
      ),
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
