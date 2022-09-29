import 'package:flutter/material.dart';
import 'package:flutter_app/pages/create_account/create_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.2,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.2,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const CreateAccount(),
    );
  }
}
