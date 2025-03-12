import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key, required this.controllerOfContent});

  final PageController controllerOfContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          titulo(),
          iconos(),
          cajasDeTexto(),
          botonLogin(),
          signUp(),
        ],
      ),
    );
  }

  Widget titulo() {
    return Expanded(
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
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Text(
              'Sign up',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cajasDeTexto() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }

  Widget signUp() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?  ",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () => {
              controllerOfContent.jumpToPage(1),
            },
            child: Text(
              'Sign up',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget botonLogin() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Forgot password?',
            style: TextStyle(
                color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Container(
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
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              )),
        ],
      ),
    );
  }
}
