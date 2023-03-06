import 'package:flutter/material.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _MaterialFlutterApp();
  }
}

class _MaterialFlutterApp extends State<MaterialFlutterApp>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Material Design App'),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      onPressed: (){

      }),
      body: Container( // Container : 위젯을 담아 관리하는 상자
        child: Center( // 가로 정렬
          child: Column(
            children: <Widget>[
              Icon(Icons.android),
              Text('android')
            ],
            mainAxisAlignment: MainAxisAlignment.center, // 세로 정렬
          ),
        ),
      ),
    );
  }
}