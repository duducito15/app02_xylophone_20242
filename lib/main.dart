import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Xylophone",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.pink,
              child: TextButton(
                onPressed: () {
                  player.setSourceAsset("audios/note1.wav");
                  player.play(
                    AssetSource("audios/note1.wav"),
                  );
                },
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
              child: TextButton(
                onPressed: () {},
                child: Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
