import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            bars(Colors.red, 1),
            bars(Colors.orange, 2),
            bars(Colors.yellow, 3),
            bars(Colors.green, 4),
            bars(Colors.teal, 5),
            bars(Colors.blueAccent, 6),
            bars(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}

Expanded bars(Color clr, int snum) {
  return Expanded(
    child: Container(
      color: clr,
      child: FlatButton(
        onPressed: () {
          playSound(snum);
        },
      ),
    ),
  );
}

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Music(),
        ),
      ),
    );
  }
}
