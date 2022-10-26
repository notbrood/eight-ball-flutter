import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Ask me Anything"),
      backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),
      body: eightBallPage(),
    )
  ),
);

class eightBallPage extends StatefulWidget {
  const eightBallPage({Key? key}) : super(key: key);

  @override
  State<eightBallPage> createState() => _eightBallPageState();
}

class _eightBallPageState extends State<eightBallPage> {
  @override
  var ball = 1;
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: TextButton(onPressed: roll,child: Image.asset("images/ball$ball.png")),
    );
  }
  roll(){
    setState(()
    {
      int x = ball;
      while(x == ball){
        ball = Random().nextInt(5) + 1;
      }
    }
    );
  }
}