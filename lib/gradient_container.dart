import "package:flutter/material.dart";
import "package:roll_dice/dice_roller.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  final List<Color> gradientColors;
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        )),
        child: const Center(child: DiceRoller()));
  }
}
