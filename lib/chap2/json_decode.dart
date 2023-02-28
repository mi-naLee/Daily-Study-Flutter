// =============== Decode : Server → App ===============

import 'dart:convert'; // json 통신을 위해 import

void main() {
  // (1) json 데이터 : "score"로 json 데이터임을 표시
  var jsonString = '''[ {"score": 40}, {"score": 80} ]''';

  // (2) jsonDecode(dart:convert) : json 데이터를 dynamic list로 rtn
  var scores = jsonDecode(jsonString);
  print(scores is List); // true

  // (3) json list에서 [0] == score(key) : 40(value)
  var firstScore = scores[0];
  print(firstScore is Map); // true
  print(firstScore['score'] == 40); // true


}