import 'package:flutter/material.dart';
import 'package:study_part1/imageWidget.dart';

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageWidgetApp(),
    );
  }
}
