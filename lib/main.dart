import 'dart:math';

import 'package:flutter/material.dart';

import 'styleguide.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text(
          'Faça sua pergunta',
          style: header,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Ball(),
          SizedBox(height: 20),
          HelpText(),
        ],
      ),
    );
  }
}

class HelpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: AppColors.secondary,
        borderRadius: new BorderRadius.all(
          Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'Clique para saber a resposta',
          style: content,
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: click,
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }

  void click() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
}
