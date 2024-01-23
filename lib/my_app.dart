import 'package:flutter/material.dart';
import 'package:kitsu/pages/auth_page.dart';
import 'package:kitsu/pages/login_page.dart';
import 'package:kitsu/pages/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      routes: {
        // HomePage.routeName: (context) => const HomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
        RegisterPage.routeName: (context) => const RegisterPage(),
      },
    );
  }
}
