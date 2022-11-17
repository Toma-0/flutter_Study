import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 3;

  void ChangeDiceFace() {
  setState(() {
    right = Random().nextInt(5) + 1;
    left = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset("images/dice$left.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset("images/dice$right.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
