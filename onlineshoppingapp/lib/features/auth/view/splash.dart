import 'dart:async';
import 'dart:ffi';

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
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logoshoppingapp.JPG'),
      ),
    );
  }
}
