import 'package:flutter/material.dart';
import 'package:statelessandrouting/page2/second.dart';

void main() {
  runApp(new MaterialApp(    
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/SecondPage": (BuildContext context) => new SecondPage()
    }
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");} //Routing dengan back button
                //onPressed: () {Navigator.pushReplacementNamed(context,"/SecondPage");} //Routing tanpa back button
              ),
              new Text("Home")
            ]
          )
        )
      )
    );
  }
}

