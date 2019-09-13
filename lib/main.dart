import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playNote(int num) {
  final player = AudioCache();
  player.play("note$num.wav");
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                playNote(1);
              },
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                playNote(2);
              },
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                playNote(3);
              },
              color: Colors.yellow,
            ),
            FlatButton(
              onPressed: () {
                playNote(4);
              },
              color: Colors.lightGreen,
            ),
            FlatButton(
              onPressed: () {
                playNote(5);
              },
              color: Colors.teal,
            ),
            FlatButton(
              onPressed: () {
                playNote(6);
              },
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                playNote(7);
              },
              color: Colors.purple,
            ),
          ],
        )),
      ),
    );
  }
}
