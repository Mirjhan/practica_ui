import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, required this.controllerOfContent});
  final PageController controllerOfContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          titulo(),
          iconos(),
          cajasDeTexto(),
          botonSignUp(),
        ],
      ),
    );
  }

  Widget titulo() {
    return Expanded(
      flex: 2,
      child: Center(
        child: Text(
          'LOGO',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 50,
          ),
        ),
      ),
    );
  }

  Widget iconos() {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Login',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 12),
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Color(0xFFF56268),
                radius: 70,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cajasDeTexto() {
    return Expanded(
      flex: 3,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Username',
                suffixIcon: Icon(
                  Icons.person,
                  color: Color(0XFFd65fa1),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email,
                  color: Color(0XFFd65fa1),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.build,
                  color: Color(0XFFd65fa1),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Confirm password',
                suffixIcon: Icon(
                  Icons.build,
                  color: Color(0XFFd65fa1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget botonSignUp() {
    return Expanded(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 20,
                offset: Offset(0, 12),
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0XFF749dff),
                  Color(0XFFe858ff),
                ]),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
