import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: SliverListTest(),
      ),
    );
  }
}
Color getRandomColor(){
  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor();
  return _color;
}

class SliverListTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(
                  color: getRandomColor(),
                  height: 150.0);
              }
            )
          )
        ],
      )
    );
  }
  
}