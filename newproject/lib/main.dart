import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main () {
  runApp(const XylophineApp());
}
class XylophineApp extends StatelessWidget {
  const XylophineApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Center(
          child:FlatButton(
          onPressed: (){
            final palyer=AudioPlayer();
            palyer.play("note1.wav");
          },
          child: const Text("click mee",),
        ),
        ),
        ),
        ),
      
    );
  }
}