import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class ConfirmCreateAccountBottomSheet extends StatelessWidget {
  const ConfirmCreateAccountBottomSheet({
    super.key,
    required this.name,
    required this.phone,
    required this.mail,
    required this.cpf,
  });

  final String name;
  final String phone;
  final String mail;
  final String cpf;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Confirme seus dados:',
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            RichText(
              text: TextSpan(
                text: 'Nome: ',
                style: textTheme.titleSmall,
                children: [
                  TextSpan(
                    text: name,
                    style: textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Telefone: ',
                  style: textTheme.titleSmall,
                  children: [
                    TextSpan(
                      text: phone,
                      style: textTheme.bodyMedium,
                    ),
                  ]),
            ),
            RichText(
              text: TextSpan(
                  text: 'E-mail:',
                  style: textTheme.titleSmall,
                  children: [
                    TextSpan(
                      text: mail,
                      style: textTheme.bodyMedium,
                    ),
                  ]),
            ),
            RichText(
              text: TextSpan(
                text: 'CPF:',
                style: textTheme.titleSmall,
                children: [
                  TextSpan(
                    text: cpf,
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
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
                  onPressed: () async {
                    /// Removendo a tela de confirmação de dados
                    Navigator.pop(context);

                    ///Adicionando o componente de loading
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => WillPopScope(
                        onWillPop: () => Future.value(false),
                        child: Center(
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: InkWell(
                              onDoubleTap: () => Navigator.pop(context),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  width: MediaQuery.of(context).size.height * 0.2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}