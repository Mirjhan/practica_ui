import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Success!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Your account has been \n             created.',
                      style: TextStyle(fontSize: 28),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                      child: Icon(
                    Icons.check_circle_outline_outlined,
                    size: 200,
                    color: Colors.green,
                  ))),
              Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20, right: 90, left: 90, bottom: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 168, 13),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Icon(
              Icons.close,
              size: 40,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
