import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playNote(int num) {
  final player = AudioCache();
  player.play("note$num.wav");
}

Expanded buildWidget(int num, Color color) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playNote(num);
      },
      color: color,
    ),
  );
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
            buildWidget(1, Colors.red),
            buildWidget(2, Colors.orange),
            buildWidget(3, Colors.yellow),
            buildWidget(4, Colors.green),
            buildWidget(5, Colors.teal),
            buildWidget(6, Colors.blue),
            buildWidget(7, Colors.purple),
          ],
        )),
      ),
    );
  }
}
