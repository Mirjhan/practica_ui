import 'package:flutter/material.dart';
import 'package:practica_ui/src/pages/login_4/login.dart';
import 'package:practica_ui/src/pages/login_4/register.dart';

class ContentPages extends StatelessWidget {
  ContentPages({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          LogInPage(
            controllerOfContent: pageController,
          ),
          RegisterPage(
            controllerOfContent: pageController,
          )
        ],
      ),
    );
  }
}
