import 'package:flutter/material.dart';

class GetstartedPage extends StatelessWidget {
  const GetstartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFF00d16e),
            child: Stack(
              children: [
                Container(
                  //width: double.infinity,
                  height: 650,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PRIMZEE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'Skip',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Fast, reliable \nand saves time',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/images/getstarted.png',
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 680,
                  right: 20,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 120, right: 120),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.black,
                    ),
                    child: Text(
                      'Get started now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
