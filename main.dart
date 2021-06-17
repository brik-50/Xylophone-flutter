import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded Meww(int number, String text, Color color){
    return Expanded(
      child: FlatButton(
        color: color,


        onPressed: (){
          final player = AudioCache();
          player.play('note$number.wav');


        },

        child: Text('$text',
          style: TextStyle(
            fontSize: 50.0,



          ),
        ),


      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(

              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,



                  children: [
                    Meww(1, 'hey', Colors.red),
                    Meww(2, 'hey',Colors.yellow),
                    Meww(3, 'hey',Colors.teal),
                    Meww(4, 'hey',Colors.white),
                    Meww(5, 'hey',Colors.blue),
                    Meww(6, 'hey',Colors.blueGrey),
                    Meww(7, 'hey',Colors.green),


                  ],
                ),
              

          ),
        ),
      ),
    );
  }
}
