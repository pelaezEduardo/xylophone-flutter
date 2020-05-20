import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKeyboard({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyboard(color: Colors.blue, sound: 1),
              buildKeyboard(color: Colors.green, sound: 2),
              buildKeyboard(color: Colors.purple, sound: 3),
              buildKeyboard(color: Colors.red, sound: 4),
              buildKeyboard(color: Colors.orange, sound: 5),
              buildKeyboard(color: Colors.yellow, sound: 6),
              buildKeyboard(color: Colors.orangeAccent, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
