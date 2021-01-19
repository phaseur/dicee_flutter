import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
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
   int leftDiceNumber = 1;
   int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(child: Image.asset('images/dice$leftDiceNumber.png'), onPressed: (){
              setState(() {
                leftDiceNumber = 6;
              });
            },),
          ),
          Expanded(
              child: FlatButton(onPressed: (){
                print('right button is pressed');
              },child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );
  }
}

// 'flutter pub get' in the current terminal to get dependencies
