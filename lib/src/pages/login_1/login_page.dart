import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              titulo(),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          cajaTexto(),
                          Positioned.fill(
                            right: 5,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 54, top: 15),
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              botonRegister()
            ],
          ),
          fondoTop(),
        ],
      ),
    );
  }

  Widget fondoTop() {
    return Stack(
      children: [
        Positioned(
            top: -50,
            left: -50,
            child:
                CircleAvatar(backgroundColor: Color(0xFF2e3192), radius: 100)),
        Positioned(
            top: -130,
            left: 50,
            child:
                CircleAvatar(backgroundColor: Color(0xFF2e3192), radius: 100)),
        Positioned(
            bottom: -50,
            right: -100,
            child:
                CircleAvatar(backgroundColor: Color(0xFF014a7f), radius: 100)),
        Positioned(
            bottom: -130,
            right: 50,
            child:
                CircleAvatar(backgroundColor: Color(0xFF014a7f), radius: 100)),
      ],
    );
  }

  Widget titulo() {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Login',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget botonRegister() {
    return Expanded(
      flex: 1,
      child: Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 30),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Text(
              'Register',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget cajaTexto() {
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50))),
              hintText: 'Username',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(Icons.person_outline),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
              hintText: 'Password',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Icon(Icons.lock_outline),
              ),
            ),
          )
        ],
      ),
    );
  }
}
