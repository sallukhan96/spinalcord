import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Container(
          child: Image.asset(
            'assets/logoo.png',
            fit: BoxFit.scaleDown,
            height: 800,
            width: 300,
          ),
        ),
      ),
    );
  }
}
