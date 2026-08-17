import 'package:flutter/material.dart';
import 'package:market_application/login.dart';
import 'package:market_application/signin.dart';

class MyAuthentication extends StatefulWidget {
  const MyAuthentication({super.key});

  @override
  State<MyAuthentication> createState() => _MyAuthenticationState();
}

class _MyAuthenticationState extends State<MyAuthentication> {
  int currentPage = 1;

  void authent(int value) {
    setState(() {
      currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentPage == 0) {
      return Login(
        authent: authent,
      );
    } else {
      return Signin(
        authent: authent,
      );
    }
  }
}