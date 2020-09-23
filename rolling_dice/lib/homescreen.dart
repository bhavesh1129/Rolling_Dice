import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDice = 1;
  int rightDice = 1;
  void roll() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rolling Dice'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage('images/dice-png-${leftDice}.png'),
                      ))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage('images/dice-png-${rightDice}.png'),
                      ))),
            ],
          ),
          OutlineButton(
            onPressed: roll,
            child: Text(
              'Roll',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(35),
                child: Text(
                  'Made with \u2764️ by Bhavesh Garg', //2764 is the unicode of red heart
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Acme'),
                ),
              )),
        ]),
      ),
    );
  }
}
