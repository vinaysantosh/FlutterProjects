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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(1, Colors.red),
                buildButton(2, Colors.orange),
                buildButton(3, Colors.yellow),
                buildButton(4, Colors.green),
                buildButton(5, Colors.greenAccent),
                buildButton(6, Colors.blue),
                buildButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
