import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

Expanded soundNumber({Color color, int sndNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$sndNumber.wav');
      },
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundNumber(color: Colors.red, sndNumber: 1),
              soundNumber(color: Colors.yellow, sndNumber: 2),
              soundNumber(color: Colors.orange, sndNumber: 3),
              soundNumber(color: Colors.green, sndNumber: 4),
              soundNumber(color: Colors.indigo, sndNumber: 5),
              soundNumber(color: Colors.blue, sndNumber: 6),
              soundNumber(color: Colors.grey, sndNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
