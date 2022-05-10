import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:  Center(
            child: FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                  
                },
                child: Text("click"),
            ),
          ),
        ),
      ),
    );
  }
}
