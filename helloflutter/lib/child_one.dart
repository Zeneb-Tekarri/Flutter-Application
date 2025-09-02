import 'package:flutter/material.dart';

class ChildOne extends StatelessWidget {
  const ChildOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome To Hello Flutter App",
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
