import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  

  void playSound(int sound_id){
    final player = AudioCache();
    player.play('note$sound_id.wav');
  }

  Widget buildKey(Color color, int sound_id){
    return Expanded(
        child: FlatButton(
        color: color,
        child: Container(),
        onPressed: () {
          playSound(sound_id);
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red,  1),
                buildKey(Colors.orange,  2),
                buildKey(Colors.yellow,  3),
                buildKey(Colors.green,  4),
                buildKey(Colors.teal,  5),
                buildKey(Colors.blue,  6),
                buildKey(Colors.purple,  7),
              ],
        )),
      ),
    );
  }
}
