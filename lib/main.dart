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
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(1);
                },
                color: Colors.red,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(2);
                },
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(3);
                },
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(4);
                },
                color: Colors.lightGreen,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(5);
                },
                color: Colors.teal,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(6);
                },
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  playNote(7);
                },
                color: Colors.purple,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
