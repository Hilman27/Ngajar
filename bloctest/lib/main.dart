import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/kandang_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final KandangBloc kandangBloc = KandangBloc();

  @override
  Widget build(BuildContext context) {    
    return BlocProvider(
          builder: (BuildContext context) => kandangBloc,        
          child: Scaffold(
            appBar: AppBar(        
              title: Text("BlocTest"),
            ),
            body: Center(        
              child:  Column(
                children: <Widget>[
                  ClassAnak(),
                  ClassButton(),
                ],
              ),        
            ),      
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<KandangBloc>(context)                            
                                  .add(TambahHewan('Ayam', 'Petok'));
              },        
            ),
          )
    
    );
  }
}

class ClassAnak extends StatelessWidget {  

  const ClassAnak({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <KandangBloc, KandangState>(
      builder: (context,  state) {
        return Text("Data dalam Bloc : ${state.mintaSuara("kucing").toString()}");
      },            
      );
  }
  
}

class ClassButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocBuilder <KandangBloc, KandangState>(
            //bloc: BlocProvider.of<FeedblocBloc>(context),
            builder: (context, state) {
                      return FlatButton(
                        onPressed:(){                                            
                          BlocProvider.of<KandangBloc>(context)                            
                                  .add(TambahHewan('Ayam', 'Petok'));
                          
                        }, 
                        child: Text("Tambah Ayam"), 
                      );
            }
          );
  }
  
}