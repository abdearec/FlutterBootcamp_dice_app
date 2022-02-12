import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Dice Abde')),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var l = Random().nextInt(6) + 1;
  var r = Random().nextInt(6) + 1;
  void changedice() {
    setState(() => {
          l = Random().nextInt(6) + 1,
          r = Random().nextInt(6) + 1,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image(
                  image: AssetImage('images/dice$l.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image(
                  image: AssetImage('images/dice$r.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
