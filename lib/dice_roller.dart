import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  var nextRoll = 1;
  void rolldice() {
    setState(() {
      nextRoll = Random().nextInt(6 + 1);
        if (nextRoll == currentDiceRoll) {
          rolldice();
        } else {
          currentDiceRoll = nextRoll;
        }
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
