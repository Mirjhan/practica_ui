import 'package:flutter/material.dart';

class SuccessPage2 extends StatelessWidget {
  const SuccessPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/fondo.jpg',
                  width: double.infinity,
                  height: double.infinity,
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Congratulations!',
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
                          Icons.check_circle,
                          color: const Color.fromARGB(255, 43, 205, 114),
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
                '    You have passed \nthe test in 30 minutes',
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
                  color: const Color.fromARGB(255, 43, 205, 114),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Text(
                  'ONCE AGAIN',
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
