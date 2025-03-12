import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key, required this.controllerOfContent});
  final PageController controllerOfContent;

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
              Column(
                children: [
                  botonLogin(),
                  titulo(),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              cajasDeTexto(),
                              Positioned.fill(
                                right: 2,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.lightBlue,
                                    radius: 30,
                                    child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              fondo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget fondo() {
    return Stack(
      children: [
        Positioned(
          top: -50,
          left: -90,
          child: CircleAvatar(backgroundColor: Color(0xFFff530e), radius: 100),
        ),
        Positioned(
          top: -200,
          left: 0,
          child: CircleAvatar(backgroundColor: Color(0xFFe92c0c), radius: 140),
        ),
        Positioned(
          bottom: -60,
          right: -120,
          child: CircleAvatar(backgroundColor: Color(0xFFff530e), radius: 100),
        ),
        Positioned(
          bottom: -200,
          right: 0,
          child: CircleAvatar(backgroundColor: Color(0xFFe92c0c), radius: 140),
        ),
      ],
    );
  }

  Widget titulo() {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Register',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget botonLogin() {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: () => {controllerOfContent.jumpToPage(0)},
        //color: Colors.blue,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
              left: 25,
            ),
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
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.blue.shade500,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget cajasDeTexto() {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Stack(
        children: [
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.person_outline),
                    ),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(40)))),
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.lock_outline),
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder()),
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(Icons.email_outlined),
                    ),
                    hintText: 'Email Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40)))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
