import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey({required Color colorName, required int soundName}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorName),
        ),
        onPressed: () {
          playSound(soundName);
        },
        child: Text(""),
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
            children: [
              buildKey(colorName: Colors.red, soundName: 1),
              buildKey(colorName: Colors.blue, soundName: 2),
              buildKey(colorName: Colors.green, soundName: 3),
              buildKey(colorName: Colors.orange, soundName: 4),
              buildKey(colorName: Colors.yellow, soundName: 5),
              buildKey(colorName: Colors.pink, soundName: 6),
              buildKey(colorName: Colors.purple, soundName: 7),
            ],
          ),
        ),
      ),
    );
  }
}
