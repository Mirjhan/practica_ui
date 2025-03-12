import 'package:flutter/material.dart';
import 'package:practica_ui/src/pages/login_5/login_page5.dart';
import 'package:practica_ui/src/pages/login_5/loginn_page5.dart';
import 'package:practica_ui/src/pages/login_6/getStarted_page.dart';
import 'package:practica_ui/src/pages/login_6/signin_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SigninPage(),
    );
  }
}
