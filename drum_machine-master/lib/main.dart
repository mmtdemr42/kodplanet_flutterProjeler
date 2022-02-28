import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: 50,
            width: 100,
            child: TextButton(
              child: Text("Çal"),
              onPressed: () {
                player.play("a.wav");
              },
            ),
          ),
        ),
      ),
    );
  }
}
