import 'package:flutter/material.dart';

class FaceplantPage extends StatelessWidget {
  const FaceplantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 76, 61),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Face-plant!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Ooops, something went\n                wrong.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Icon(
                  Icons.cancel_outlined,
                  size: 250,
                  color: Colors.white,
                  opticalSize: 100,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20, left: 100, right: 100, bottom: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 165, 54, 45),
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )),
                    child: Text(
                      'Try again',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
