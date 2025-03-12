import 'package:flutter/material.dart';
import 'package:practica_ui/src/pages/login_1/login_page.dart';
import 'package:practica_ui/src/pages/login_1/register_page.dart';

class ContentPages extends StatelessWidget {
  ContentPages({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          LoginPage(
            controllerOfContent: pageController,
          ),
          RegisterPage(
            controllerOfContent: pageController,
          ),
        ],
      ),
    );
  }
}
