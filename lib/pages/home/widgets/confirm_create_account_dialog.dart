import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class ConfirmCreateAccountDialog extends StatelessWidget {
  const ConfirmCreateAccountDialog({
    Key? key,
    required this.name,
    required this.phone,
    required this.mail,
    required this.cpf,
  }) : super(key: key);

  final String name;
  final String phone;
  final String mail;
  final String cpf;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SimpleDialog(
      title: const Text(
        'Confirme seus dados:',
      ),
      insetPadding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      contentPadding: const EdgeInsets.all(16.0),
      children: [
        RichText(
          text: TextSpan(text: 'Nome:', style: textTheme.titleSmall, children: [
            TextSpan(
              text: name,
              style: textTheme.bodyMedium,
            ),
          ]),
        ),
        RichText(
          text: TextSpan(
              text: 'Telefone:',
              style: textTheme.titleSmall,
              children: [
                TextSpan(
                  text: phone,
                  style: textTheme.bodyMedium,
                ),
              ]),
        ),
        RichText(
          text:
              TextSpan(text: 'E-mail:', style: textTheme.titleSmall, children: [
            TextSpan(
              text: mail,
              style: textTheme.bodyMedium,
            ),
          ]),
        ),
        RichText(
          text: TextSpan(text: 'CPF:', style: textTheme.titleSmall, children: [
            TextSpan(
              text: cpf,
              style: textTheme.bodyMedium,
            ),
          ]),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Corrigir',
                style: textTheme.bodyLarge!.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.pop(context),
              width: MediaQuery.of(context).size.height * 0.2,
            ),
          ],
        ),
      ],
    );
  }
}
