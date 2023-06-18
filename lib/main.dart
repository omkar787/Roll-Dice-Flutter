import 'package:flutter/material.dart';
import "package:roll_dice/gradient_container.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          // Color.fromARGB(255, 26, 2, 80),
          // Color.fromARGB(255, 45, 7, 98)),
          [Colors.red, Colors.deepPurpleAccent],
    )
    ),
  ));
}
