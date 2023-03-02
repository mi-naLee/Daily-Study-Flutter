import 'package:flutter/material.dart';
// material : 플러터의 UI 관련 클래스 포함

void main() {
  runApp(MyApp());
  // runApp : binding.dart 클래스에 정의되어 있어 플러터 앱 시작
  //          이 함수에 플러터 앱을 시작하면서 화면에 표시할 위젯 전달
  // # widget : 클래스로 구현되며 이를 상속받는 다양한 위젯이 있다.
  //            자동차 부품처럼 특정한 기능을 담당.
}

/*class MyApp extends StatelessWidget {
  // StatelessWidget : 앱이 위젯의 상태를 감시(연결)할 필요가 없음
  // ex) 내용을 갱신할 필요가 없는 도움말 위젯(화면에 보이기 전에 모두 로딩)
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var switchValue = false;
    return MaterialApp(
      // MaterialApp 반환 : 그림을 그리는 데 필요한 도화지이므로 해당 함수 반환
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, // 메인 색상 지정
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // 앱이 모바일, 웹, 데스크톱, 맥 등 어떤 플랫폼에서도 자연스럽게 보이도록 지원
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      darkTheme: ThemeData.light(),
      /*home: Container(
        // Container : 특정 공간을 책임지는 역할
        color: Colors.white,
        child: Center(
          child: Text(
              'hello\nFlutter',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 20)),
        ),
      )*/
      home: Scaffold(
        body: Center(
          child: Switch(
              value: switchValue,
              onChanged: (value) {
                switchValue = value;
              }),
        ),
      ),
      // home : 앱을 실행할 때 첫 화면에 어떤 내용을 표시할 것인가 지정
      // --> MyHomePage 클래스 지정정
    );
  }
}*/

class MyApp extends StatefulWidget {
  // StatefulWidget : 앱이 위젯의 상태를 감시하다 특정 상태가 되면 알맞은 처리
  // ex) 계산기 앱에서 버튼 누르면 결괏값 출력(동적 위젯)
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  // _(under score) : 내부에서만 사용할 수 있다.(main.dart 내에서만 사용할 것이다.)
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    darkTheme: ThemeData.light(),
    home: Scaffold(
      body: Center(
       /*child: Switch(
        value: switchValue,
        onChanged: (value) {
          setState(() {
            // setState : 변경되는 사실을 앱에 알려 화면을 갱신하기
            print(value);
            switchValue = value;
          });
        }),*/
        child: ElevatedButton(
          child: Text('$test'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all((_color)),
          ),
          onPressed: () {
            if(_color == Colors.blue){
              setState(() {
                test = 'flutter';
                _color = Colors.amber;
              });
            }else{
              setState(() {
                test = 'flutter';
                _color = Colors.blue;
              });
            }
          },
        ),
      ),
    ));
  }
}
