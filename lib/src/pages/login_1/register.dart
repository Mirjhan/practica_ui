import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              fondo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget fondo(){
    return Stack(
      children: [
        Positioned(
                top: -50,
                left: -100,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFff530e),
                  radius: 100),
                ),
                Positioned(
                top: -120,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFe92c0c),
                  radius: 100),
                ),
                Positioned(
                bottom: -50,
                right: -100,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFff530e),
                  radius: 100),
                ),
                Positioned(
                bottom: -120,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFe92c0c),
                  radius: 100),
                ),
      ],
    );
  }
}