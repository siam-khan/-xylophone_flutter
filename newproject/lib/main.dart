// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main () {
  runApp( XylophineApp());
}
class XylophineApp extends StatelessWidget {
 
void playSound(int soundNumber){
  final player= AudioCache();
 player.play("note$soundNumber.wav") ;
}

Expanded buildKey(  {required Color color, required int soundNumber}){
  return Expanded(
child: FlatButton(
                color: color,
              onPressed: (){
                playSound(soundNumber);
              }, child: Text(""),
              
              ),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color:Colors.red, soundNumber:1),
            buildKey(color:Colors.blue, soundNumber:2),
            buildKey(color:Colors.pink, soundNumber:3),
            buildKey(color:Colors.yellow, soundNumber:4),
            buildKey(color:Colors.orange, soundNumber:5),
            buildKey(color:Colors.teal, soundNumber:6),
            buildKey(color:Colors.purple, soundNumber:7),
             
          ],
        ),
        ),
        ),
      
    );
  }
}