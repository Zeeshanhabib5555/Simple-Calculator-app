import 'package:flutter/material.dart';
import 'package:ytub_calculator_app/home.dart';

void main() {
  runApp(const calculator());
}

class calculator extends StatelessWidget {
  const calculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home_screen(),

    );
  }
}
