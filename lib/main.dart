import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
//*  There Are the code of Playinng  The sounds..
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }
//! Endinng of pyainng the sounnds

//* There Are build the key..!
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playsound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

//! There Are End the code of buildkey...
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
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.pink, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.teal, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.yellow, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
