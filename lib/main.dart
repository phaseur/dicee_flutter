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

class DicePage extends StatelessWidget {
  static const int randomLeftNumber = 3;
  static const int randomRightNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(child: Image.asset('images/dice$randomLeftNumber.png'), onPressed: (){
              print('left button is pressed');
            },),
          ),
          Expanded(
              child: FlatButton(onPressed: (){
                print('right button is pressed');
              },child: Image.asset('images/dice$randomRightNumber.png'))
          ),
        ],
      ),
    );
  }
}

// 'flutter pub get' in the current terminal to get dependencies
