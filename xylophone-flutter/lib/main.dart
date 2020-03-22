import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  FlatButton buildkey(Color color, int sound) {
    return FlatButton(
      color: color,
      onPressed: () {
        playsound(sound);
      },
      child: Container(
        height: 75,
        width: 300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildkey(Colors.red, 1),
              buildkey(Colors.blue, 2),
              buildkey(Colors.green, 3),
              buildkey(Colors.purple, 4),
              buildkey(Colors.orangeAccent, 5),
              buildkey(Colors.lightBlueAccent, 6),
              buildkey(Colors.tealAccent, 7),
              SizedBox(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
