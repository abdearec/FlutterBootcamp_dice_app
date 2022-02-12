import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Abde'),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () => print('button 01'),
                child: Image(
                  image: AssetImage('images/dice1.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () => print('button02'),
                child: Image(
                  image: AssetImage('images/dice2.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
