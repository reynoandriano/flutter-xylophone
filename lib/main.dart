import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound({required int keyNumber}) {
    final player = AudioCache();
    player.play('note$keyNumber.wav');
  }

  Expanded buildKey({required int number, required MaterialColor color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(keyNumber: number);
        },
        child: const Text(''),
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
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellow),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.teal),
              buildKey(number: 6, color: Colors.blue),
              buildKey(number: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
