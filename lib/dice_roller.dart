import 'package:flutter/material.dart';
import "dart:math";

class DiceRoller extends StatefulWidget{
    const DiceRoller({super.key});

    @override
    State<DiceRoller> createState(){
        return _DiceRoller();
    }
}

class _DiceRoller extends State<DiceRoller>{
    final Random randomObj  = Random();
    var currentFace = 1;

    void rollDice(){
        setState(()  {
            var tempFace = randomObj.nextInt(5) + 1;
            while ( tempFace == currentFace){
                tempFace = randomObj.nextInt(5) + 1;
            }
            currentFace = tempFace;
        });
    }


    @override
    Widget build(BuildContext context){
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset(
                    "assets/images/dice-$currentFace.png",
                    width: 200,
                ),
                const SizedBox(
                    height: 20,
                ),
                TextButton(
                    onPressed: rollDice,
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        )),
                    child: const Text("Roll Dice")),
            ],
        );
    }
}