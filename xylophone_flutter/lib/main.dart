import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int noteNum)
  {
    player.play('note$noteNum.wav');
  }


  Widget buildButton(int index,Color color)
  {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(index);
        },
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(color),
        ), child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                player.play('note1.wav');
              }, child: Text("Click Me!!"),
            ),
          ),
        ),
      ),
    );
  }
}
