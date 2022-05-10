import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void PlaySound (int count) {
    final player = AudioCache();
    player.play('note$count.wav');
  }

  Expanded buildKey (int soundNumber, Color color ) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: () {
          PlaySound(soundNumber);
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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(7, Colors.red),
              buildKey(2, Colors.yellow),
              buildKey(3,Colors.pink),
              buildKey(4, Colors.purple),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.cyanAccent),
            ],

          ),
        ),
      ),
    );
  }
}
