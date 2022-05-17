import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    //写函数
    final palyer = AudioCache();
    palyer.play('note$soundNumber.wav');
  }

  Expanded bulidKey({required int soundNumber, required Color color}) {
    //抽象出按钮
    return Expanded(
      child: TextButton(
        //定义button背景
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
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
              bulidKey(soundNumber: 1, color: Colors.red),
              bulidKey(soundNumber: 2, color: Colors.orange),
              bulidKey(soundNumber: 3, color: Colors.yellow),
              bulidKey(soundNumber: 4, color: Colors.green),
              bulidKey(soundNumber: 5, color: Colors.teal),
              bulidKey(soundNumber: 6, color: Colors.blue),
              bulidKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
