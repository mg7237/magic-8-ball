import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomNo = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ask me Anything'),
          backgroundColor: Colors.indigo.shade800,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.lightBlue,
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomNo = Random().nextInt(5) + 1;
                  print('random $randomNo');
                });
              },
              child: Image(
                image: AssetImage('images/ball$randomNo.png'),
                width: 250,
                height: 250,
              ),
            ),
          ),
        ));
  }
}
