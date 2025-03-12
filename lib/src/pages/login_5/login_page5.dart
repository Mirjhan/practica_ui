import 'package:flutter/material.dart';

class LoginPage5 extends StatelessWidget {
  const LoginPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Icon(
                Icons.diamond_outlined,
                color: Colors.pinkAccent,
                size: 150,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'TeamUp',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'The app tagline goes here...',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
