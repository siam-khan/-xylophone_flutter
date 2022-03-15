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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Column(
          children: [
            FlatButton(
              color: Colors.red,
            onPressed: (){
              playSound(1);
            }, child: Text(""),
            
            ),
            FlatButton(
              color: Colors.black,
            onPressed: (){
               playSound(2);
               
            },
            child: Text(""),
            
            ),
            FlatButton(
              color: Colors.blue,
            onPressed: (){
             playSound(3);
            },
            child: Text(""),
            ),
            FlatButton(
              color: Colors.orange,
            onPressed: (){
             playSound(4);
            },
            child: Text(""),
            ),
            FlatButton(
              color: Colors.yellow,
            onPressed: (){
               playSound(5);
            },
            child: Text(""),
            ),
            FlatButton(
              color: Colors.teal,
            onPressed: (){
             playSound(6);
            },
            child: Text(""),
            ),
            FlatButton(
              color: Colors.teal,
            onPressed: (){
             playSound(7);
            },
            child: Text(""),
            ),
          ],
        ),
        ),
        ),
      
    );
  }
}