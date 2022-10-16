import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(String soundName) {
    final player = AudioPlayer();
    //player.setSource(AssetSource("note1.wav"));
    player.play(AssetSource(soundName));
  }

  Expanded buildKey(Color color, String soundName) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundName);
        },
        child: Container(),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, "note1.wav"),
              buildKey(Colors.yellow, "note2.wav"),
              buildKey(Colors.green, "note3.wav"),
              buildKey(Colors.teal, "note4.wav"),
              buildKey(Colors.blue, "note5.wav"),
              buildKey(Colors.purple, "note6.wav"),
              buildKey(Colors.blueGrey, "note7.wav"),
            ],
          ),
        ),
      ),
    );
  }
}
