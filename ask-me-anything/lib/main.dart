import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('Ask Me Anything'), backgroundColor: Colors.blue),
          backgroundColor: Colors.lightBlueAccent,
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballno = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ballno.png'),
      ),
    );
  }
}
