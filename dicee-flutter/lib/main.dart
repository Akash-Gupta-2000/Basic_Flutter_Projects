import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
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
  @override
  int leftDice = 1, rightDice = 2;
  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 120,
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/dice$leftDice.png'),
                ),
                Expanded(
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: changeDice,
              child: Text(
                'Roll Dice',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}
