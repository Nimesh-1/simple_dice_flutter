import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int index1 = 1;
  int index2 = 1;

  buttonpressed() {
    index1 = Random().nextInt(6) + 1;
    index2 = Random().nextInt(6) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: buttonpressed,
                child: Image.asset('assets/images/$index1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: buttonpressed,
                child: Image.asset('assets/images/$index2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
