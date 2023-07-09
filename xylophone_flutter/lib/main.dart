import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber){
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundnumber.wav'),
    );
  }
  Expanded buildkey({required Color color, required int soundNumber}){
   return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text(''),
        color: color,
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
              buildkey(color:Colors.red, soundNumber:1),
              buildkey(color:Colors.orange, soundNumber:2),
              buildkey(color:Colors.yellow, soundNumber:3),
              buildkey(color:Colors.green, soundNumber:4),
              buildkey(color:Colors.teal, soundNumber:5),
              buildkey(color:Colors.blue, soundNumber:6),
              buildkey(color:Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
