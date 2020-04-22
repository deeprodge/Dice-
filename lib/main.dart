import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.redAccent[700],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceN=1;
  int rightDiceN=1;

  void rollDice(){
    setState(() {
      leftDiceN=(Random().nextInt(6))+1;
      rightDiceN=Random().nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: (){
                  rollDice();
                },
                child: Image.asset('images/dice$leftDiceN.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  rollDice();
                },
                child: Image.asset('images/dice$rightDiceN.png')),
          ),
        ],
      ),
    );
  }
}
