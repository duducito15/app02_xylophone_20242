import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final player = AudioPlayer();

  void playNote(int note) {
    player.setSourceAsset("audios/note$note.wav");
    player.play(
      AssetSource("audios/note$note.wav"),
    );
  }

  Widget buildKey(Color colorKey, int note) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Xylophone",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Color(0xFF001219), 1),
          buildKey(Color(0xFF005f73), 2),
          buildKey(Color(0xFF0a9396), 3),
          buildKey(Color(0xFF94d2bd), 4),
          buildKey(Color(0xFFe9d8a6), 5),
          buildKey(Color(0xFFee9b00), 6),
          buildKey(Color(0xFFca6702), 7),
        ],
      ),
    );
  }
}
