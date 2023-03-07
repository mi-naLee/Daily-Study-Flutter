import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _ImageWidgetApp();
  }
}

class _ImageWidgetApp extends State<ImageWidgetApp> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/penguin.png', width: 200, height: 200, fit: BoxFit.fill), // yaml 선언한 이미지
              Text('Hello Flutter',
              style: TextStyle(fontFamily: 'Ownglyph',
              fontSize: 30, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}