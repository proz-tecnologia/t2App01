import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool enabled;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;
  final bool autofocus;
  final bool autocorrect;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final String? helperText;
  final int? helperMaxLines;
  final Widget? suffix;
  final bool obscureText;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  const CustomTextFormField({
    Key? key,
    required this.label,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
    this.controller,
    this.autofocus = false,
    this.autocorrect = false,
    this.maxLength,
    this.textInputAction,
    this.textInputType,
    this.inputFormatters,
    this.hintText,
    this.validator,
    this.autovalidateMode,
    this.helperText,
    this.helperMaxLines,
    this.suffix,
    this.obscureText = false,
    this.focusNode,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: textCapitalization,
      controller: controller,
      autofocus: autofocus,
      autocorrect: autocorrect,
      enabled: enabled,
      maxLength: maxLength,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      validator: validator,
      autovalidateMode: autovalidateMode,
      obscureText: obscureText,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(label),
        suffixIcon: suffix,
        helperText: helperText,
        helperMaxLines: helperMaxLines,
        enabled: enabled,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
      ),
    );
  }
}
