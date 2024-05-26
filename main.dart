import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topButton = 1; // Default value for top dice side
  int bottomButton = 1; // Default value for bottom dice side
  int leftButton = 1; // Default value for left dice side
  int rightButton = 1; // Default value for right dice side

  void rollDice() {
    setState(() {
      topButton = Random().nextInt(6) + 1; // Roll top dice side
      bottomButton = Random().nextInt(6) + 1; // Roll bottom dice side
      leftButton = Random().nextInt(6) + 1; // Roll left dice side
      rightButton = Random().nextInt(6) + 1; // Roll right dice side
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$topButton.png'), // Show top dice side image
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$bottomButton.png'), // Show bottom dice side image
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$leftButton.png'), // Show left dice side image
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$rightButton.png'), // Show right dice side image
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
