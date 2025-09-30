import 'package:flutter/material.dart';
import 'package:template_quiz_mobile_si_b/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
