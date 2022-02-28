import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(player: player),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  const DrumPage({
    Key? key,
    required this.player,
  }) : super(key: key);

  final AudioCache player;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  butonolusturma(
                      "woo", MaterialStateProperty.all(Colors.blue)),
                  butonolusturma("bongo", MaterialStateProperty.all(Colors.redAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  butonolusturma(
                      "clap1", MaterialStateProperty.all(Colors.purpleAccent)),
                  butonolusturma("clap2", MaterialStateProperty.all(const Color.fromARGB(33, 204, 195, 195))),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  butonolusturma(
                      "clap3", MaterialStateProperty.all(Colors.amberAccent)),
                  butonolusturma("crash", MaterialStateProperty.all(Colors.lightGreenAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  butonolusturma(
                      "how", MaterialStateProperty.all(Colors.pinkAccent)),
                  butonolusturma("oobah", MaterialStateProperty.all(Colors.brown)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded butonolusturma(String ses, MaterialStateProperty<Color> renk) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Container(),
          style: ButtonStyle(
            backgroundColor: renk,
          ),
          onPressed: () {
            player.play("$ses.wav");
          },
        ),
      ),
    );
  }
}
