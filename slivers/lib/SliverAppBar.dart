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
      SliverAppBar(
        title: Text('SliverAppBar'),
        backgroundColor: Colors.green,
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/forest.jpg', fit: BoxFit.cover),
        ),
      ),
      SliverFixedExtentList(
        itemExtent: 150.0,
        delegate: SliverChildListDelegate(
          [
            Container(color: Colors.red),
            Container(color: Colors.purple),
            Container(color: Colors.green),
            Container(color: Colors.orange),
            Container(color: Colors.yellow),
            Container(color: Colors.pink),
          ],
        ),
      ),
    ],
    )
    );
  }
  
}