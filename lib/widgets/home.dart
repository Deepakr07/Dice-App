import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftButton = 1;
  var rightButton = 1;

  @override
  Widget build(BuildContext context) {
    void operation() {
      rightButton = Random().nextInt(6) + 1;
      leftButton = Random().nextInt(6) + 1;
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left buttton is pressed');
                setState(() {
                  operation();
                });
              },
              child: Image.asset('images/dice$leftButton.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right buttton is pressed');
                setState(() {
                  operation();
                });
              },
              child: Image.asset('images/dice$rightButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
