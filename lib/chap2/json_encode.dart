// =============== Encode : App → Server ===============

import 'dart:convert';

void main(){
  var scores = [ // 'score'로 변수임을 표시
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  // jsonEncode : 전체 데이터를 ''로 감싸고 "score" 형식으로 key 값 표시됨
  var jsonText = jsonEncode(scores);
  print(jsonText); // scores 내용 출력
}