import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    /* Cara pakai : Ganti Widget dalam home dengan StatefulClass() atau StatelessClass()
    Stateless tidak bisa mengganti nilai.
    Stateful bisa
    */
    home: StatefulClass()
  ));
}

class StatelessClass extends StatelessWidget{
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless"),      
      ),
      body: Text("Pressed : $number Times"),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: ()=>number++,
      ),
    );
  }

}

class StatefulClass extends StatefulWidget{
  
  @override
  StatefulStateClass createState() => StatefulStateClass();

}

class StatefulStateClass extends State<StatefulClass>{
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),      
      ),
      body: Text("Pressed : $number Times"),
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: (){
          setState(() {
          number++;
        });
        }
      ),
    );
  }
  
}