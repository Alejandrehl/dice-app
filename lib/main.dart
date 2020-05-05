import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Left Button Pressed");
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Right Button Pressed");
              },
              child: Image.asset("images/dice2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
