import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"), 
      backgroundColor: Colors.deepOrange,
      automaticallyImplyLeading: false,),//Menghilangkan tombol back di appBar
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
                onPressed: null,
              ),
              new Text("Second Page")
            ]
          )
        )
      )
    );
  }
}