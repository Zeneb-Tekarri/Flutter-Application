import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onlineshoppingapp/core/constant/string.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Image.asset('assets/images/Frame 3.png'),
        ));
  }
}
