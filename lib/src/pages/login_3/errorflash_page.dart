import 'package:flutter/material.dart';

class ErrorflashPage extends StatelessWidget {
  const ErrorflashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Expanded(
                    flex: 8,
                    child: Image.asset(
                      'assets/images/fondo.jpg',
                    )),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Sorry, man...',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Icon(
                          Icons.cancel,
                          color: const Color.fromARGB(255, 255, 35, 80),
                          size: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '    The next time \nyou must be lucky',
                style: TextStyle(
                    color: const Color.fromARGB(255, 180, 180, 182),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 115, right: 115),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 35, 80),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Text(
                  'TRY AGAIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
